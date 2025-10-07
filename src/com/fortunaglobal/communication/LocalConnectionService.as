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
*        Author: Evan Gifford - egifford@blitzagency.com
*
*/

package com.fortunaglobal.communication
{
        
        import flash.events.Event;
        import flash.events.EventDispatcher;
        import flash.events.IEventDispatcher;
        import flash.utils.Proxy;
        import flash.utils.flash_proxy;
        import flash.utils.getTimer;
        
        import mx.core.mx_internal;
        import mx.rpc.AsyncToken;
        import mx.rpc.events.FaultEvent;
        import mx.rpc.events.InvokeEvent;
        import mx.rpc.events.ResultEvent;
        
        use namespace flash_proxy;
        use namespace mx_internal;
        
        [Event(name="connect", type="flash.events.Event")]
        [Event(name="close", type="flash.events.Event")]
        [Event(name="result", type="mx.rpc.events.ResultEvent")]
        [Event(name="invoke", type="mx.rpc.events.InvokeEvent")]
        [Event(name="fault", type="mx.rpc.events.FaultEvent")]
        
        /**
         * The LocalConnectionServce provides Asynchronous RPC-like functionality through
         * a pair of LocalConnections. <br><br>
         * 
         * Once a LocalConnectionService is connected, any call made on it will be relayed
         * to the connected peer and the response will be returned to result handlers
         * of the ASyncToken reuturned from the call.<br><br>
         * 
         * Since this class is dynamic and extends ObjectProxy, calls are made directly on the
         * instance of LocalConnectionService.
         * 
         * @author       evangifford
         */
                
        public dynamic class LocalConnectionService extends Proxy implements IEventDispatcher
        {
                /**
                 * The connection name to use for LocalConnect. Two variations of this name will be used to 
                 * enable two-way communication, [connectionName]_a and [connectionName]_b
                 */
                
                [Bindable]
                public var connected:Boolean;
                
                /**
                 * Always the latest completed result object not handled by ASyncToken
                 */
                protected var _tokens:Object;
                
                private var _localObject:LocalObject;

                public function LocalConnectionService()
                {       
                        super();
                        
                        _tokens=new Object;                     
                        _localObject=new LocalObject();                 
                        
                }       
                
                /**
                 * Specifies one or more domains that can send LocalConnection calls to this LocalConnection instance.
                 * @see http://livedocs.adobe.com/flex/3/langref/flash/net/LocalConnection.html
                 */             
                public function allowDomain(... domains):void{
                        _localObject.allowDomain(domains);
                }
                
                /**
                 * Specifies one or more domains that can send LocalConnection calls to this LocalConnection instance.
                 * @see http://livedocs.adobe.com/flex/3/langref/flash/net/LocalConnection.html
                 */             
                public function allowInsecureDomain(... domains):void{
                        _localObject.allowInsecureDomain(domains);
                }

                /**
                 * @param connectionName The name to use to connect. 
                 * Both sides of a LocalConnectionService must use the same connection name.
                 */
                
                public function set connectionName(value:String):void{
                        _localObject.connectionName=value;
                }
                
                public function get connectionName():String{
                        return _localObject.connectionName;
                }
                
                /**
                 * The Class where callbacks will be made for remote requests. 
                 */
                public function set client(value:Object):void{
                        _localObject.client=value;
                }
                
                public function get client():Object{
                        return _localObject.client;
                }
                
                public function get lastResult():*{
                        return _localObject.lastResult;
                }
                
                /* Attempts to connect to a peer. If a peer is available using the same connection name,
                 * a complete connection will be made and keepalive requests will be sent back and forth
                 * between clients to ensure timely detection of a disconnect.
                 */
                  
                public function connect(connectionName:String):void{            
            _localObject.connect(connectionName);
                }               
                
                public function close():void{                                                                   
                        _localObject.close();                   
                }
                        
                override flash_proxy function callProperty(methodName:*, ... args):* {
                
                var message:LocalConnectionServiceMessage = new LocalConnectionServiceMessage();
                message.methodName = methodName;
                message.messageId = (getTimer()*Math.random()).toString();
                message.timestamp = getTimer();
                message.body = args;
                
                var token:AsyncToken = new AsyncToken(message);
                _tokens[message.messageId] = token;             
                        
                        var tokenProxy:ASyncTokenProxy = new ASyncTokenProxy();
                        tokenProxy.token = token;
                        tokenProxy.addEventListener(Event.COMPLETE, aSyncTokenProxyComplete);
                        
                        dispatchEvent( new InvokeEvent(InvokeEvent.INVOKE) );
                if ( (args as Array) && (args as Array).length>0){
                        _localObject.call.apply( _localObject, [ methodName, tokenProxy.resultHandler, tokenProxy.faultHandler, args ] );
                } else {
                        _localObject.call(methodName,tokenProxy.resultHandler,tokenProxy.faultHandler);
                }
                
                return token;
                
            }
            
            protected function aSyncTokenProxyComplete(event:Event):void{
                
                var token:AsyncToken = ASyncTokenProxy( event.target ).token;
                
                //Dispatch event for those listening to service for result instead of ASyncToken
                var resultEvent:ResultEvent = ResultEvent.createEvent(token.result,token, token.message );
                dispatchEvent( resultEvent );
                
                var message:LocalConnectionServiceMessage = LocalConnectionServiceMessage( token.message );
                delete _tokens[message.messageId];
            
            }

                //Implementation of IEventDispatcher methods, proxied to _localObject
        public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void{
                _localObject.addEventListener(type,listener,useCapture,priority,useWeakReference);
        }
        
        public function dispatchEvent(event:Event):Boolean{
                return _localObject.dispatchEvent(event);
        }
        
        public function hasEventListener(type:String):Boolean{
                return _localObject.hasEventListener(type);
        }
             
        public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void{           
                return _localObject.removeEventListener(type,listener,useCapture);
        }
        
        public function willTrigger(type:String):Boolean{
                return _localObject.willTrigger(type);
        }
        
        }
}