package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	import com.fortunaglobal.modifiers.Bend;

	import mx.utils.UIDUtil;

	import org.papervision3d.events.InteractiveScene3DEvent;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.primitives.Cube;
	import org.papervision3d.objects.primitives.Cylinder;

	import valueObjects.RoundRack1java;
	import valueObjects.RoundRack1javaMaterial;
	
	public class RoundRack1 extends ModelProperties
	{	
		private var i:int=0;
		private var roundFactor:Number = .5;
		private var barLength:Number = 400;
		public var hangerBar:Cylinder;
		public var footer:Cube;
		public var trays:Array;
		public var tray:RoundTray1;
		public var roundTray11:RoundTray1;
		public var roundTray12:RoundTray1;
		public var roundTray13:RoundTray1;
		public var roundTray14:RoundTray1;
		public var roundTray15:RoundTray1;
		public var roundTray16:RoundTray1;
		public var roundTray17:RoundTray1;
		public var roundTray18:RoundTray1;
		public var roundTray19:RoundTray1;
		public var roundTray110:RoundTray1;
		public var roundTray111:RoundTray1;
		public var roundTray112:RoundTray1;
		public var roundTray113:RoundTray1;
		public var roundTray114:RoundTray1;
		public var roundTray115:RoundTray1;
		public var roundTray116:RoundTray1;
		public var roundTray117:RoundTray1;
		public var roundTray118:RoundTray1;
		public var roundTray119:RoundTray1;
		public var roundTray120:RoundTray1;
		public var roundTray121:RoundTray1;
		public var roundRack1EventDispachPress:Function;
		public var roundRack1EventDispachRelease:Function;
		public var roundRack1EventDispachDrag:Function;
		public var mouseClickObject:Function;
		public var mouseOverAwayObject:Function;
		public var mouseOverObject:Function;
		public var handlePresss:Function;
		public var handleDrag:Function;
		public var handleRelease:Function;
		
		public var javaObject:RoundRack1java;
		public var roundRack1javaMaterial:RoundRack1javaMaterial;

		public function RoundRack1(roundRack1javaMaterialparam:RoundRack1javaMaterial)
		{
			this.roundRack1javaMaterial = roundRack1javaMaterialparam;
			var cubesMaterialList:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial(roundRack1javaMaterial.cubesMaterialListUrl)})

			cubesMaterialList.getMaterialByName('front').interactive = true;
			cubesMaterialList.getMaterialByName('back').interactive = true;
			cubesMaterialList.getMaterialByName('right').interactive = true;
			cubesMaterialList.getMaterialByName('left').interactive = true;
			cubesMaterialList.getMaterialByName('top').interactive = true;
			cubesMaterialList.getMaterialByName('bottom').interactive = true;

			cubesMaterialList.getMaterialByName('front').doubleSided = false;
			cubesMaterialList.getMaterialByName('back').doubleSided = false;
			cubesMaterialList.getMaterialByName('right').doubleSided = false;
			cubesMaterialList.getMaterialByName('left').doubleSided = false;
			cubesMaterialList.getMaterialByName('top').doubleSided = false;
			cubesMaterialList.getMaterialByName('bottom').doubleSided = false;

			hangerBar = new Cylinder(new BitmapFileMaterial(roundRack1javaMaterial.cylinderBitmapFileMaterialUrl),10,barLength);
			var bender:Bend = new Bend(hangerBar);
			bender.bend(Bend.Y, Bend.Z, roundFactor, 0);
			hangerBar.material.interactive = true;

			footer = new Cube(cubesMaterialList,100,300,5,1,1,1);
			tray = new RoundTray1(roundRack1javaMaterial.trayplateMaterialUrl);
			roundTray11 = new RoundTray1(roundRack1javaMaterial.roundTray11plateMaterialUrl);
			roundTray12 = new RoundTray1(roundRack1javaMaterial.roundTray12plateMaterialUrl);
			roundTray13 = new RoundTray1(roundRack1javaMaterial.roundTray13plateMaterialUrl);
			roundTray14 = new RoundTray1(roundRack1javaMaterial.roundTray14plateMaterialUrl);
			roundTray15 = new RoundTray1(roundRack1javaMaterial.roundTray15plateMaterialUrl);
			roundTray16 = new RoundTray1(roundRack1javaMaterial.roundTray16plateMaterialUrl);
			roundTray17 = new RoundTray1(roundRack1javaMaterial.roundTray17plateMaterialUrl);
			roundTray18 = new RoundTray1(roundRack1javaMaterial.roundTray18plateMaterialUrl);
			roundTray19 = new RoundTray1(roundRack1javaMaterial.roundTray19plateMaterialUrl);
			roundTray110 = new RoundTray1(roundRack1javaMaterial.roundTray110plateMaterialUrl);
			roundTray111 = new RoundTray1(roundRack1javaMaterial.roundTray111plateMaterialUrl);
			roundTray112 = new RoundTray1(roundRack1javaMaterial.roundTray112plateMaterialUrl);
			roundTray113 = new RoundTray1(roundRack1javaMaterial.roundTray113plateMaterialUrl);
			roundTray114 = new RoundTray1(roundRack1javaMaterial.roundTray114plateMaterialUrl);
			roundTray115 = new RoundTray1(roundRack1javaMaterial.roundTray115plateMaterialUrl);
			roundTray116 = new RoundTray1(roundRack1javaMaterial.roundTray116plateMaterialUrl);
			roundTray117 = new RoundTray1(roundRack1javaMaterial.roundTray117plateMaterialUrl);
			roundTray118 = new RoundTray1(roundRack1javaMaterial.roundTray118plateMaterialUrl);
			roundTray119 = new RoundTray1(roundRack1javaMaterial.roundTray119plateMaterialUrl);
			roundTray120 = new RoundTray1(roundRack1javaMaterial.roundTray120plateMaterialUrl);
			roundTray121 = new RoundTray1(roundRack1javaMaterial.roundTray121plateMaterialUrl);
 			trays = new Array();
 			trays.push(tray,roundTray11,roundTray12,roundTray13,roundTray14,
 						roundTray15,roundTray16,roundTray17,roundTray18,
 						roundTray19,roundTray110,roundTray111,roundTray112,
 						roundTray113,roundTray114,roundTray115,roundTray116,
 						roundTray117,roundTray118,roundTray119,roundTray120,roundTray121);
 			
 			
 			var posz:int = -100;
 			var posy:int = 25;

 			//creates RoundTray1() objects in circular orientation,assign names and add to parent
 			for(i=1;i<22;i++)
			{
				tray = trays[i];
				tray.name = "tray" + i;
				setPosition(tray,0,(barLength*2*Math.sin(Math.PI*i*roundFactor/21)/Math.PI)+posy,
							(barLength*2*Math.cos(Math.PI*i*roundFactor/21)/Math.PI)+posz);
				addChild(tray);
			}
			setPosition(hangerBar,0,200,0);
			setPosition(footer,0,0,-100);			
	
			hangerBar.name = 'hangerBar';
			footer.name = 'footer';
			addChild(hangerBar);
			addChild(footer);			
		}
		
		private function addEventListeners(object:DisplayObject3D, eventType:String, listener:Function):void
		{
			object.addEventListener(eventType, listener);
			for each(var child:DisplayObject3D in object.children)
			{
				addEventListeners(child, eventType, listener);
			}
		}
		
		private function addParentContainer(object:DisplayObject3D, parent:DisplayObject3D):void
		{
			//trace('Object:' + object.name + '< parent:' + parent.name);
			object.root = parent;
			for each(var child:DisplayObject3D in object.children)
			{
				addParentContainer(child, parent);
			}
		}
		
		private function objectAllParentDispatchEvents(object:DisplayObject3D):void
		{
			object.addEventListener(InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
			object.addEventListener(InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
			object.addEventListener(InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
			object.addEventListener(InteractiveScene3DEvent.OBJECT_PRESS,handlePresss);
			object.addEventListener(InteractiveScene3DEvent.OBJECT_MOVE,handleDrag);
			object.addEventListener(InteractiveScene3DEvent.OBJECT_RELEASE,handleRelease);
		}
		
		public function eventActions(mouseClickObject:Function,mouseOverAwayObject:Function,
							mouseOverObject:Function,roundRack1EventDispachPress:Function,
							roundRack1EventDispachRelease:Function,roundRack1EventDispachDrag:Function,
							handlePresss:Function,handleDrag:Function,handleRelease:Function):void
			{
			addEventListeners(this,InteractiveScene3DEvent.OBJECT_PRESS,
				roundRack1EventDispachPress);
			this.removeEventListener(InteractiveScene3DEvent.OBJECT_PRESS,
				roundRack1EventDispachPress);
			addEventListeners(this,InteractiveScene3DEvent.OBJECT_MOVE,
				roundRack1EventDispachDrag);
			this.removeEventListener(InteractiveScene3DEvent.OBJECT_MOVE,
				roundRack1EventDispachDrag);
			addEventListeners(this,InteractiveScene3DEvent.OBJECT_RELEASE,
				roundRack1EventDispachRelease);
			this.removeEventListener(InteractiveScene3DEvent.OBJECT_RELEASE,
				roundRack1EventDispachRelease);
				
			for(i=1;i<22;i++)
 			{
 				this.trays[i].plate.addEventListener(
 					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
 				this.trays[i].plate.addEventListener(
 					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
 				this.trays[i].plate.addEventListener(
 					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
 			}
			objectAllParentDispatchEvents(this);
		}
	}
}