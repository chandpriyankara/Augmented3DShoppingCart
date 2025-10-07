package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.events.InteractiveScene3DEvent;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.primitives.Cube;
	
	import valueObjects.DynamicRack1java;

	public class DynamicRack1 extends ModelProperties
	{
		public var dynamicRack:DisplayObject3D;
		public var dynamicHanger1:DynamicHanger;
		public var dynamicHanger2:DynamicHanger;
		public var dynamicHanger3:DynamicHanger;
		public var dynamicHanger4:DynamicHanger;
		public var foot:Cube;
		public var mouseClickObject:Function;
		public var mouseOverAwayObject:Function;
		public var mouseOverObject:Function;
		public var dynamicRack1EventDispachPress:Function;
		public var dynamicRack1EventDispachRelease:Function;
		public var dynamicRack1EventDispachDrag:Function;
		public var handlePresss:Function;
		public var handleDrag:Function;
		public var handleRelease:Function;
		
		public var javaObject:DynamicRack1java;
		
		public function DynamicRack1()
		{
			dynamicRack = new DisplayObject3D();
			dynamicHanger1 = new DynamicHanger();
			dynamicHanger2 = new DynamicHanger();
			dynamicHanger3 = new DynamicHanger();
			dynamicHanger4 = new DynamicHanger();

			var cubesMaterialList:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/1.jpg")})

			foot = new Cube(cubesMaterialList,500,100,5,5,5,5);

			setPosition(foot,0,0,0);
			setPosition(dynamicHanger1,0,5,0);
			setPosition(dynamicHanger2,120,5,0);
			setPosition(dynamicHanger3,240,5,0);
			setPosition(dynamicHanger4,360,5,0);

			foot.name = 'foot';
			dynamicHanger1.name = 'dynamicHanger1';
			dynamicHanger2.name = 'dynamicHanger2';
			dynamicHanger3.name = 'dynamicHanger3';
			dynamicHanger4.name = 'dynamicHanger4';

			//addChild(foot);			
			dynamicRack.addChild(dynamicHanger1);
			dynamicRack.addChild(dynamicHanger2);
			dynamicRack.addChild(dynamicHanger3);
			dynamicRack.addChild(dynamicHanger4);
			//dynamicRack.addChild(new Sphere(new ColorMaterial(0x7777777,50)));

//			dynamicRack.x += -250;
//			dynamicRack.y += -200;
//			dynamicRack.z += -50;

			dynamicRack.name = 'dynamicRack';
			addParentContainer(this,this);
			addChild(dynamicRack);
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
		mouseOverObject:Function,dynamicRack1EventDispachPress:Function,
		dynamicRack1EventDispachRelease:Function,dynamicRack1EventDispachDrag:Function,
		handlePresss:Function,handleDrag:Function,handleRelease:Function):void
		{
		addEventListeners(this,InteractiveScene3DEvent.OBJECT_PRESS,
			dynamicRack1EventDispachPress);
		this.removeEventListener(InteractiveScene3DEvent.OBJECT_PRESS,
			dynamicRack1EventDispachPress);
		addEventListeners(this,InteractiveScene3DEvent.OBJECT_MOVE,
			dynamicRack1EventDispachDrag);
		this.removeEventListener(InteractiveScene3DEvent.OBJECT_MOVE,
			dynamicRack1EventDispachDrag);
		addEventListeners(this,InteractiveScene3DEvent.OBJECT_RELEASE,
			dynamicRack1EventDispachRelease);
		this.removeEventListener(InteractiveScene3DEvent.OBJECT_RELEASE,
			dynamicRack1EventDispachRelease);

		this.dynamicHanger1.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger1.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger1.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		this.dynamicHanger1.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger1.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger1.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		this.dynamicHanger1.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger1.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger1.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		this.dynamicHanger2.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger2.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger2.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		this.dynamicHanger2.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger2.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger2.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
		
		this.dynamicHanger2.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger2.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger2.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
		
		this.dynamicHanger3.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger3.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger3.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
		
		this.dynamicHanger3.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger3.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger3.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
		
		this.dynamicHanger3.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger3.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger3.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		this.dynamicHanger4.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger4.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger4.tray1.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		this.dynamicHanger4.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger4.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger4.tray2.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		this.dynamicHanger4.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
		this.dynamicHanger4.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
		this.dynamicHanger4.tray3.plate.addEventListener(
			InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);

		objectAllParentDispatchEvents(this);
		}
	}
}