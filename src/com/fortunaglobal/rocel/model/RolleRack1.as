package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.events.InteractiveScene3DEvent;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.primitives.Cube;
	import org.papervision3d.objects.primitives.Cylinder;
	
	import valueObjects.RolleRack1java;
	import valueObjects.RolleRack1javaMaterial;
	
	public class RolleRack1 extends ModelProperties
	{
		private var i:int=0;
		public var rolleRack:DisplayObject3D;
		public var foot:Cube;
		public var panel:Cube;
		public var mouseClickObject:Function;
		public var mouseOverAwayObject:Function;
		public var mouseOverObject:Function;
		public var rolleRack1EventDispachPress:Function;
		public var rolleRack1EventDispachRelease:Function;
		public var rolleRack1EventDispachDrag:Function;
		public var handlePresss:Function;
		public var handleDrag:Function;
		public var handleRelease:Function;
		
		public var hangerBar1:Cylinder;
		public var hangerBar2:Cylinder;
		public var rolleTray4x41:RolleTray4x4;
		public var rolleTray4x42:RolleTray4x4;
		public var rolleTray4x43:RolleTray4x4;
		public var rolleTray4x44:RolleTray4x4;
		public var rolleTray4x45:RolleTray4x4;
		public var rolleTray4x46:RolleTray4x4;
		public var rolleTray4x47:RolleTray4x4;
		public var rolleTray4x48:RolleTray4x4;
		public var rolleTray4x49:RolleTray4x4;
		public var rolleTray4x410:RolleTray4x4;
		public var rolleTray4x411:RolleTray4x4;
		public var rolleTray4x4Array:Array;
		
		public var javaObject:RolleRack1java;
		
		public var rolleRack1javaMaterial:RolleRack1javaMaterial;
		
		public function RolleRack1(rolleRack1javaMaterialparam:RolleRack1javaMaterial):void
		{
			this.rolleRack1javaMaterial = rolleRack1javaMaterialparam;
			rolleRack = new DisplayObject3D();
			
			hangerBar1 = new Cylinder(new BitmapFileMaterial(rolleRack1javaMaterial.hangerBar1BitmapFileMaterialUrl),20,450);
			hangerBar1.material.interactive = true;
			hangerBar2 = new Cylinder(new BitmapFileMaterial(rolleRack1javaMaterial.hangerBar2BitmapFileMaterialUrl),20,450);
			hangerBar2.material.interactive = true;
			
			var footcubesMaterialList:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial(rolleRack1javaMaterial.footcubesMaterialListUrl)});
			
			var panelcubesMaterialList:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial(rolleRack1javaMaterial.panelcubesMaterialListUrl)});
			
			foot = new Cube(footcubesMaterialList,1000,100,10,5,5,5);
			panel = new Cube(panelcubesMaterialList,800,5,400,5,5,5);
			
			rolleTray4x4Array = new Array();
			rolleTray4x41 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x41plateMaterialList16Url);
			rolleTray4x42 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x42plateMaterialList16Url);
			rolleTray4x43 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x43plateMaterialList16Url);
			rolleTray4x44 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x44plateMaterialList16Url);
			rolleTray4x45 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x45plateMaterialList16Url);
			rolleTray4x46 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x46plateMaterialList16Url);
			rolleTray4x47 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x47plateMaterialList16Url);
			rolleTray4x48 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x48plateMaterialList16Url);
			rolleTray4x49 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x49plateMaterialList16Url);
			rolleTray4x410 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x410plateMaterialList16Url);
			rolleTray4x411 = new RolleTray4x4(
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList1Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList2Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList3Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList4Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList5Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList6Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList7Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList8Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList9Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList10Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList11Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList12Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList13Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList14Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList15Url,
				rolleRack1javaMaterial.rolleTray4x411plateMaterialList16Url);
			
			rolleTray4x4Array.push(rolleTray4x41,rolleTray4x42,rolleTray4x43,
				rolleTray4x44,rolleTray4x45,rolleTray4x46,rolleTray4x47,rolleTray4x48,
				rolleTray4x49,rolleTray4x410,rolleTray4x411);
			
			var posx:int = 100;
			var posz:int = 350;
			var posy:int = 250;
			i = 1;
			for each (var rolleTray4x4:RolleTray4x4 in rolleTray4x4Array)
			{
				rolleTray4x4.pitch(-75);
				rolleTray4x4.name = "rolleTray4x4" + i;
				setPosition(rolleTray4x4,posx+(400*(i%2)),posy+(i*20),posz);
				rolleTray4x4.isLeft = ++i%2>0;
				trace(rolleTray4x4.name);
				trace(rolleTray4x4.isLeft);
				addChild(rolleTray4x4);
			}
			
			setPosition(foot,400,5,0);
			setPosition(panel,400,200,0);
			setPosition(hangerBar1,0,200,0);
			setPosition(hangerBar2,800,200,0);
			
			foot.name = 'foot';
			panel.name = 'panel';
			hangerBar1.name = 'hangerBar1';
			hangerBar2.name = 'hangerBar2';
			
			rolleRack.addChild(hangerBar1);
			rolleRack.addChild(hangerBar2);
			rolleRack.addChild(panel);
			rolleRack.addChild(foot);
			
			rolleRack.name = 'rolleRack';
			addParentContainer(this,this);
			addChild(rolleRack);
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
		
		public function mouseReleaseOutsodeObject(event:InteractiveScene3DEvent):void
		{
			//event.displayObject3D.parent.
		}
		
		public function eventActions(mouseClickObject:Function,mouseOverAwayObject:Function,
									 mouseOverObject:Function,rolleRack1EventDispachPress:Function,
									 rolleRack1EventDispachRelease:Function,rolleRack1EventDispachDrag:Function,
									 handlePresss:Function,handleDrag:Function,handleRelease:Function):void
		{
			addEventListeners(this,InteractiveScene3DEvent.OBJECT_PRESS,
				rolleRack1EventDispachPress);
			this.removeEventListener(InteractiveScene3DEvent.OBJECT_PRESS,
				rolleRack1EventDispachPress);
			addEventListeners(this,InteractiveScene3DEvent.OBJECT_MOVE,
				rolleRack1EventDispachDrag);
			this.removeEventListener(InteractiveScene3DEvent.OBJECT_MOVE,
				rolleRack1EventDispachDrag);
			addEventListeners(this,InteractiveScene3DEvent.OBJECT_RELEASE,
				rolleRack1EventDispachRelease);
			this.removeEventListener(InteractiveScene3DEvent.OBJECT_RELEASE,
				rolleRack1EventDispachRelease);
			
			for each (var rolleTray4x4:RolleTray4x4 in this.rolleTray4x4Array)
			{
				//				rolleTray4x4.plate1.addEventListener(
				//					InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
				//				rolleTray4x4.plate2.addEventListener(
				//					InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
				//				rolleTray4x4.plate3.addEventListener(
				//					InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
				//				rolleTray4x4.plate4.addEventListener(
				//					InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
				
				rolleTray4x4.plate1.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate1.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate1.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate2.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate2.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate2.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate3.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate3.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate3.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate4.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate4.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate4.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate5.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate5.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate5.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate6.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate6.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate6.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate7.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate7.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate7.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate8.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate8.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate8.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate9.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate9.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate9.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate10.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate10.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate10.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate11.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate11.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate11.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate12.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate12.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate12.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate13.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate13.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate13.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate14.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate14.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate14.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate15.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate15.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate15.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
				
				rolleTray4x4.plate16.addEventListener(
					InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
				rolleTray4x4.plate16.addEventListener(
					InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
				rolleTray4x4.plate16.addEventListener(
					InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
			}
			objectAllParentDispatchEvents(this);
		}
	}
}