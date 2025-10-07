/*
*
*    LocalConnectionService - Unlimited RPC functionality through LocalConnection.
*    Copyright (C) 2009 BLITZ Digital Studios LLC d/b/a BLITZ Agency.
*
*    This library is free software; you can redistribute it and/or modify it 
*    under the terms of the GNU Lesser General Public License as published
*    by the Free Software Foundation; either version 2.1 of the License, or 
*    (at your option) any later version.
*
*    This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
*    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
*    PURPOSE. See the GNU Lesser General Public License for more details.
*
*    You should have received a copy of the GNU Lesser General Public License along 
*    with this library; if not, write to the Free Software Foundation, Inc.,
*    59 Temple Place, Suite 330, Boston, MA 02111-1307 USA 
*
*    BLTIZ Digital Studios LLC, 3415 S. Sepulveda BLVD, Ste 500, Los Angeles CA, 90034
*    http://www.blitzagency.com
*    http://labs.blitzagency.com
*
*        @author Evan Gifford - egifford@blitzagency.com
*
*/

package com.fortunaglobal.communication
{
        
        import flash.events.AsyncErrorEvent;
        import flash.events.Event;
        import flash.events.EventDispatcher;
        import flash.events.SecurityErrorEvent;
        import flash.events.StatusEvent;
        import flash.events.TimerEvent;
        import flash.net.LocalConnection;
        import flash.net.registerClassAlias;
        import flash.system.Security;
        import flash.utils.ByteArray;
        import flash.utils.Timer;
        import flash.utils.clearInterval;
        import flash.utils.getTimer;
        import flash.utils.setInterval;
        import flash.utils.setTimeout;
        
        [Event(name="connect", type="flash.events.Event")]
        [Event(name="close", type="flash.events.Event")]
        [Event(name="result", type="mx.rpc.events.ResultEvent")]
        [Event(name="invoke", type="mx.rpc.events.InvokeEvent")]
        [Event(name="fault", type="mx.rpc.events.FaultEvent")]
        
        /**
         * @author       evangifford
         */
                        
        public class LocalObject extends EventDispatcher
        {
                /**
                 * The connection name to use for LocalConnect. Two variations of this name will be used to 
                 * enable two-way communication, [connectionName]_a and [connectionName]_b
                 */
                public var connectionName:String;
                
                public var connected:Boolean;
                
                //How often to send keepAlive
                private var keepAliveInterval:int=200;
                
                //How long to wait for keepAlive to come back before detecting disconnect
                private var keepAliveTimeoutTime:int=400;
                
                //How often to try to complete connection
                private static const COMPLETE_CONNECTION_INTERVAL:int=300;      
                private var _keepAliveInterval:uint;
                
                private var packetFragmentSize:int = 39200;
        
                /**
                 * The Class where callbacks will be made for remote requests. 
                 */
                public var client:Object;

                /**
                 * Always the latest completed result object not handled by ASyncToken
                 */
                public var lastResult:Object;
                
                protected var lc_a:LocalConnection;
                protected var lc_b:LocalConnection;
                
                private var sender:LocalConnection;
                private var senderId:String;            
                private var reciever:LocalConnection;
                private var recieverId:String;
                
                private var _messageQueue:Array;
                private var _responders:Object;         
                private var _responseBuffers:Object;
                private var _requestBuffers:Object;
                
                private var _completeConnectionInterval:uint;
                private var _startKeepAliveTimer:Timer;
                private var _keepAliveTimer:Timer;              
                
                public function LocalObject()
                {       
                        super();
                        
                        lc_a = new LocalConnection();
            lc_a.allowDomain("*");
            lc_a.addEventListener(StatusEvent.STATUS, onStatus); 
                 
            lc_b = new LocalConnection();
            lc_b.allowDomain("*");
            lc_b.addEventListener(StatusEvent.STATUS, onStatus);
            
            _responders = new Object();
                        
            _startKeepAliveTimer = new Timer( keepAliveInterval, 1 );
            _startKeepAliveTimer.addEventListener(TimerEvent.TIMER_COMPLETE, startKeepAliveTimeout );   
            
            _keepAliveTimer = new Timer( keepAliveTimeoutTime, 1 );
            _keepAliveTimer.addEventListener(TimerEvent.TIMER_COMPLETE, keepAliveTimeout);
            
            //Register classes used by LocalObject           
            registerClassAlias("com.blitzagency.rpc.LocalObjectMessage",LocalObjectMessage);
                        registerClassAlias("com.blitzagency.rpc.LocalObjectMessagePacket",LocalObjectMessagePacket);
        
                }
                
                /**
                 * Specifies one or more domains that can send LocalConnection calls to this LocalConnection instance.
                 * @see http://livedocs.adobe.com/flex/3/langref/flash/net/LocalConnection.html
                 */             
                public function allowDomain(... domains):void{
                        lc_a.allowDomain(domains);
                        lc_b.allowDomain(domains);
                }
                
                /**
                 * Specifies one or more domains that can send LocalConnection calls to this LocalConnection instance.
                 * @see http://livedocs.adobe.com/flex/3/langref/flash/net/LocalConnection.html
                 */     
                public function allowInsecureDomain(... domains):void{
                        lc_a.allowInsecureDomain(domains);
                        lc_b.allowInsecureDomain(domains);
                }
                
                /**
                 * Attempts to connect to a peer. If a peer is available using the same connection name,
                 * a complete connection will be made and keepalive requests will be sent back and forth
                 * between clients to ensure timely detection of a disconnect.
                 * 
                 * @param connectionName The name to use to connect. 
                 * Both sides of a LocalConnectionService must use the same connection name.
                 * 
                 */
                public function connect(connectionName:String="_lcs"):void{
            
                        if ( connected ){
                trace("Tried connect when already connected");
                return;
            }
             
            this.connectionName = connectionName;
            
                        _responseBuffers = new Object();
                        _requestBuffers = new Object();
                        
                        //Note: Always put underscore before name for AIR to SWF communication
                        if ( connectionName.charAt(0) != "_" ){
                                trace("Warning, you must use an underscore as the first character of connection name to communicate between AIR and SWF files");
                        }                       
                        
                        try {
                                sender = lc_b;
                                senderId = connectionName+"_b";
                reciever = lc_a;
                recieverId = connectionName+"_a";
                reciever.connect(recieverId);
            } catch (error:ArgumentError) {     
                try {
                        sender = lc_a;
                        senderId = connectionName+"_a";
                        reciever = lc_b;
                        recieverId = connectionName+"_b";
                        reciever.connect(recieverId);
                } catch (e:Error) {
                        trace("LocalConnectionService: No Channels Available for connection name "+connectionName);
                        close();
                        setTimeout(connect,2000,connectionName);
                }
            }
            
            reciever.client = this;
                        
                _completeConnectionInterval = setInterval(sendCompleteConnectionRequest,COMPLETE_CONNECTION_INTERVAL);
            
                }
                
                private function sendCompleteConnectionRequest():void{
                        sender.send(senderId, "receiveCompleteConnectionRequest");
                }
                
                /**
                 * Public function due to workaround using ClientProxy  
                 */             
                
                public function receiveCompleteConnectionRequest():void{
                        
                        clearInterval( _completeConnectionInterval );
                        
                        if ( connected ) return;
                        
                        dispatchEvent( new Event(Event.CONNECT) );      
                        
                        connected = true;                       
                        sendCompleteConnectionRequest();
                        
                        _startKeepAliveTimer.delay=keepAliveInterval;
                        _startKeepAliveTimer.start();
                                        
                        if ( _messageQueue ){
                                clearMessageQueue();    
                        }
                        
                }                               
                
                private function startKeepAliveTimeout(event:Event):void{
                        startKeepAlive();
                }
                
                //Disconnection detecton ----------------------------------------
                protected function startKeepAlive():void{       
                        _keepAliveInterval = setInterval( sendKeepAlive, keepAliveInterval );
                }
                
                private var _keepAlivePending:Boolean;
                protected function sendKeepAlive():void{
                        if ( _keepAlivePending ) return;
                        sender.send(senderId, "receiveKeepAlive");
                        
                        _keepAliveTimer.delay=keepAliveTimeoutTime;
                        _keepAliveTimer.start();
                        _keepAlivePending=true;
                }
                        
                public function receiveKeepAlive():void{
                        sender.send(senderId, "receiveKeepAliveResponse");
                }       
                
                public function receiveKeepAliveResponse():void{
                        _keepAliveTimer.reset();
                        _keepAlivePending=false;
                }
                
                protected function stopKeepAlive():void{
                        _keepAliveTimer.reset();
                        _startKeepAliveTimer.reset();
                        clearInterval( _keepAliveInterval );    
                        _keepAlivePending=false;                                        
                }       

                protected function keepAliveTimeout(event:Event):void{
                        //Detected disconnect
                        disconnectDetected();
                }
                
                protected function connectionDetected():void{
                        _responseBuffers=new Object;
                        connected=true;
                        dispatchEvent( new Event(Event.CONNECT) );
                }
                
                protected function disconnectDetected():void{
                        reset();
                }
                
                public function close():void{                   
                        
                        connected=false;
                        
                        stopKeepAlive();
                                                
                        try {
                                reciever.close();
                        } catch (e:Error){
                                //Yum!
                                trace("Could not close reciever");
                        }
                        
                        _messageQueue=null;     
                        _responseBuffers=null;                  
                        
                        dispatchEvent( new Event( Event.CLOSE ) );
                        
                }
                
                public function reset():void{
                        close();
                        connect(connectionName);
                }
                                        
                public function call( methodName:String, resultHandler:Function, faultHandler:Function=null, ... args):void {
                
                var message:LocalObjectMessage = new LocalObjectMessage();
                message.messageId = (getTimer()*Math.random()*100).toString();
                message.methodName = methodName,
                message.body = args;
                
                var responder:InnerResponder = new InnerResponder();
                responder.resultHandler=resultHandler;
                responder.faultHandler=faultHandler;
                
                _responders[message.messageId] = responder;
                sendRequestMessage(message);
                
            }
            
            private function sendRequestMessage(message:LocalObjectMessage):void{
                
                if ( connected ){
                        
                        var packets:Array = makeMessagePackets(message);
                        for each ( var packet:LocalObjectMessagePacket in packets ){
                                        if ( ! connected ) return;
                                        sender.send(senderId, "recieveRequestMessagePacket", packet);
                                }
                                
                } else {
                        
                        if ( ! _messageQueue ) _messageQueue = new Array();
                        _messageQueue.push(message);
                        
                }
                
            }
            
            private function clearMessageQueue():void{
                
                for each ( var message:LocalObjectMessage in _messageQueue ){
                        sendRequestMessage( message );
                }               
                _messageQueue = null;           
            }
            
            /**
                 * Public function due to workaround using ClientProxy  
                 */             
                public function sendResponseMessage(message:LocalObjectMessage):void{
                                        
                        var packets:Array = makeMessagePackets(message);
                        for each ( var packet:LocalObjectMessagePacket in packets ){
                                sender.send(senderId, "receiveResponseMessagePacket", packet);
                        }
                }
                
                /**
                 * Public function due to workaround using ClientProxy  
                 */             
                public function receiveResponseMessagePacket(message:LocalObjectMessagePacket):void{                    
                        
                        if ( ! connected ) return;
                        
                        _keepAlivePending=false;
                        _keepAliveTimer.reset();
                        
                        if ( ! _responseBuffers.hasOwnProperty(message.messageId) ){
                                 _responseBuffers[message.messageId] = new ByteArray();
                        }
                        
                        var responseBuffer:ByteArray = _responseBuffers[message.messageId];
                        
                        if ( message.data ){
                                responseBuffer.writeBytes(message.data);
                        }
                        
                        if ( message.finalMessage ) {
                                
                                responseBuffer.position = 0;
                                var resultObject:Object = responseBuffer.readObject();          

                                delete _responseBuffers[message.messageId];                             
                                        
                                var responder:InnerResponder = _responders[message.messageId];
                                if ( message.type == LocalObjectMessageType.RESPONSE ){
                                        responder.resultHandler( resultObject );
                                } else {
                                        responder.faultHandler( resultObject );
                                }
                                
                                delete _responders[message.messageId];  
                                
                        }
                                                
                }
                
                public function recieveRequestMessagePacket(message:LocalObjectMessagePacket):void{                     
                        
                        _startKeepAliveTimer.delay=keepAliveInterval;
                        
                        if ( ! _requestBuffers.hasOwnProperty(message.messageId) ){
                                _requestBuffers[message.messageId] = new ByteArray();
                        }
                        
                        var requestBuffer:ByteArray = _requestBuffers[message.messageId];
                        
                        if ( message.data ){
                                requestBuffer.writeBytes(message.data);
                        }
                        
                        if ( message.finalMessage ) {
                                
                                var result:LocalObjectMessage = new LocalObjectMessage();
                        result.methodName = message.methodName;
                        result.messageId = message.messageId;
                        
                        if ( ! client ){
                                
                                        result.headers = LocalObjectMessageType.FAULT;
                                result.body = LocalObjectErrorCodes.NO_REMOTE_CLIENT_SPECIFIED;
                                
                                } else {        
                                        
                                        requestBuffer.position = 0;
                                        var resultObject:Object;
                                        
                                        resultObject = requestBuffer.readObject();
                                        
                                        delete _requestBuffers[message.messageId];
                                        
                                        var clientCallReturnValue:Object;
                                        
                                        //Now call method on client
                                        if ( (resultObject as Array).length == 0 ){
                                                
                                                clientCallReturnValue = client[message.methodName].call();
                                                result.body = clientCallReturnValue;
                                                        
                                        } else {
                                                
                                                clientCallReturnValue = client[message.methodName].apply(client, resultObject);
                                                result.body = clientCallReturnValue;
                                                
                                        }
                        }
                        
                        sendResponseMessage(result);
                        
                        }               
                                                
                }
                
                /* Chop up a message into LocalConnection size packets */
                private function makeMessagePackets(message:LocalObjectMessage):Array{
                        
                        var ba:ByteArray = new ByteArray();
                        ba.writeObject(message.body);
                        ba.position=0;                  
                        
                        var packets:Array = new Array();
                        var offset:Number = 0;
                        //For now left 800 Bytes availabe for packet wrapper data 
                        var length:int;
                        
                        while ( offset < ba.length ){
                                
                                var packet:LocalObjectMessagePacket = new LocalObjectMessagePacket();
                                packet.methodName = message.methodName;
                                packet.messageId = message.messageId;
                                
                                if ( offset + packetFragmentSize > ba.length ){
                                        length = ba.length - offset;
                                        packet.finalMessage=true;
                                } else {
                                        length = packetFragmentSize;
                                        packet.finalMessage=false;
                                }
                                
                                var dataFragment:ByteArray = new ByteArray();
                                dataFragment.writeBytes(ba,offset, length);
                                dataFragment.position=0;
                                
                                packet.data = dataFragment;
                                packets.push(packet);
                                
                                offset += packetFragmentSize;                   
                        }
                        
                        return packets;
                        
                }
                
                private function onStatus(event:Event):void {
            //trace(event);
        }
        
        }
}
class InnerResponder
{
        public var resultHandler:Function;
        public var faultHandler:Function;
}
