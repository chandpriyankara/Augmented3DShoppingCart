package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.events.InteractiveScene3DEvent;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.ColorMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.primitives.Cube;
	import org.papervision3d.objects.primitives.Sphere;
	
	public class RolleTray4x4 extends ModelProperties
	{
		public var plate1:Cube;
		public var plate2:Cube;
		public var plate3:Cube;
		public var plate4:Cube;
		public var plate5:Cube;
		public var plate6:Cube;
		public var plate7:Cube;
		public var plate8:Cube;
		public var plate9:Cube;
		public var plate10:Cube;
		public var plate11:Cube;
		public var plate12:Cube;
		public var plate13:Cube;
		public var plate14:Cube;
		public var plate15:Cube;
		public var plate16:Cube;
		public var isLeft:Boolean = false;
		
		public function RolleTray4x4(rolleTray4x4plateMaterialList1:String,
									 rolleTray4x4plateMaterialList2:String,
									 rolleTray4x4plateMaterialList3:String,
									 rolleTray4x4plateMaterialList4:String,
									 rolleTray4x4plateMaterialList5:String,
									 rolleTray4x4plateMaterialList6:String,
									 rolleTray4x4plateMaterialList7:String,
									 rolleTray4x4plateMaterialList8:String,
									 rolleTray4x4plateMaterialList9:String,
									 rolleTray4x4plateMaterialList10:String,
									 rolleTray4x4plateMaterialList11:String,
									 rolleTray4x4plateMaterialList12:String,
									 rolleTray4x4plateMaterialList13:String,
									 rolleTray4x4plateMaterialList14:String,
									 rolleTray4x4plateMaterialList15:String,
									 rolleTray4x4plateMaterialList16:String)
		{
			var traySubGroupDisplayObject3D:DisplayObject3D = new DisplayObject3D();
			var trayDisplayObject3D:DisplayObject3D = new DisplayObject3D();
			
			var plateMaterialList1:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/1.jpg")});
			var plateMaterialList2:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/2.jpg")});
			var plateMaterialList3:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/3.jpg")});
			var plateMaterialList4:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/4.jpg")});
			var plateMaterialList5:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/5.jpg")});
			var plateMaterialList6:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/6.jpg")});
			var plateMaterialList7:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/7.jpg")});
			var plateMaterialList8:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/8.jpg")});
			var plateMaterialList9:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/9.jpg")});
			var plateMaterialList10:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/10.jpg")});
			var plateMaterialList11:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/11.jpg")});
			var plateMaterialList12:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/12.jpg")});
			var plateMaterialList13:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/13.jpg")});
			var plateMaterialList14:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/14.jpg")});
			var plateMaterialList15:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/15.jpg")});
			var plateMaterialList16:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/16.jpg")});
			
			plate1 = new Cube(plateMaterialList1,100,100,5,1,1,1);
			plate2 = new Cube(plateMaterialList2,100,100,5,1,1,1);
			plate3 = new Cube(plateMaterialList3,100,100,5,1,1,1);
			plate4 = new Cube(plateMaterialList4,100,100,5,1,1,1);
			plate5 = new Cube(plateMaterialList5,100,100,5,1,1,1);
			plate6 = new Cube(plateMaterialList6,100,100,5,1,1,1);
			plate7 = new Cube(plateMaterialList7,100,100,5,1,1,1);
			plate8 = new Cube(plateMaterialList8,100,100,5,1,1,1);
			plate9 = new Cube(plateMaterialList9,100,100,5,1,1,1);
			plate10 = new Cube(plateMaterialList10,100,100,5,1,1,1);
			plate11 = new Cube(plateMaterialList11,100,100,5,1,1,1);
			plate12 = new Cube(plateMaterialList12,100,100,5,1,1,1);
			plate13 = new Cube(plateMaterialList13,100,100,5,1,1,1);
			plate14 = new Cube(plateMaterialList14,100,100,5,1,1,1);
			plate15 = new Cube(plateMaterialList15,100,100,5,1,1,1);
			plate16 = new Cube(plateMaterialList16,100,100,5,1,1,1);
			
			plate1.parentContainer = this;
			plate2.parentContainer = this;
			plate3.parentContainer = this;
			plate4.parentContainer = this;
			plate5.parentContainer = this;
			plate6.parentContainer = this;
			plate7.parentContainer = this;
			plate8.parentContainer = this;
			plate9.parentContainer = this;
			plate10.parentContainer = this;
			plate11.parentContainer = this;
			plate12.parentContainer = this;
			plate13.parentContainer = this;
			plate14.parentContainer = this;
			plate15.parentContainer = this;
			plate16.parentContainer = this;
			
			plate1.material.interactive = true;
			plate2.material.interactive = true;
			plate3.material.interactive = true;
			plate4.material.interactive = true;
			plate5.material.interactive = true;
			plate6.material.interactive = true;
			plate7.material.interactive = true;
			plate8.material.interactive = true;
			plate9.material.interactive = true;
			plate10.material.interactive = true;
			plate11.material.interactive = true;
			plate12.material.interactive = true;
			plate13.material.interactive = true;
			plate14.material.interactive = true;
			plate15.material.interactive = true;
			plate16.material.interactive = true;
			
			setPosition(plate1,0,0,0);
			setPosition(plate2,0,0,100);
			setPosition(plate3,0,0,200);
			setPosition(plate4,0,0,300);
			setPosition(plate5,100,0,0);
			setPosition(plate6,100,0,100);
			setPosition(plate7,100,0,200);
			setPosition(plate8,100,0,300);
			setPosition(plate9,200,0,0);
			setPosition(plate10,200,0,100);
			setPosition(plate11,200,0,200);
			setPosition(plate12,200,0,300);
			setPosition(plate13,300,0,0);
			setPosition(plate14,300,0,100);
			setPosition(plate15,300,0,200);
			setPosition(plate16,300,0,300);
			
			plate1.name = 'plate1';
			plate2.name = 'plate2';
			plate3.name = 'plate3';
			plate4.name = 'plate4';
			plate5.name = 'plate5';
			plate6.name = 'plate6';
			plate7.name = 'plate7';
			plate8.name = 'plate8';
			plate9.name = 'plate9';
			plate10.name = 'plate10';
			plate11.name = 'plate11';
			plate12.name = 'plate12';
			plate13.name = 'plate13';
			plate14.name = 'plate14';
			plate15.name = 'plate15';
			plate16.name = 'plate16';
			
			plate1.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate2.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate3.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate4.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate5.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate6.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate7.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate8.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate9.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate10.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate11.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate12.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate13.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate14.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate15.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			plate16.addEventListener(
				InteractiveScene3DEvent.OBJECT_DOUBLE_CLICK,mouseReleaseOutsodeObject);
			
			traySubGroupDisplayObject3D.addChild(plate1);
			traySubGroupDisplayObject3D.addChild(plate2);
			traySubGroupDisplayObject3D.addChild(plate3);
			traySubGroupDisplayObject3D.addChild(plate4);
			traySubGroupDisplayObject3D.addChild(plate5);
			traySubGroupDisplayObject3D.addChild(plate6);
			traySubGroupDisplayObject3D.addChild(plate7);
			traySubGroupDisplayObject3D.addChild(plate8);
			traySubGroupDisplayObject3D.addChild(plate9);
			traySubGroupDisplayObject3D.addChild(plate10);
			traySubGroupDisplayObject3D.addChild(plate11);
			traySubGroupDisplayObject3D.addChild(plate12);
			traySubGroupDisplayObject3D.addChild(plate13);
			traySubGroupDisplayObject3D.addChild(plate14);
			traySubGroupDisplayObject3D.addChild(plate15);
			traySubGroupDisplayObject3D.addChild(plate16);
			
			traySubGroupDisplayObject3D.pitch(-90);
			
			traySubGroupDisplayObject3D.name = 'traySubGroupDisplayObject3D';
			trayDisplayObject3D.addChild(traySubGroupDisplayObject3D);
			
			trayDisplayObject3D.x += -50;
			trayDisplayObject3D.y += -22;
			trayDisplayObject3D.z += -150;
			
			trayDisplayObject3D.name = 'trayDisplayObject3D';
			addChild(trayDisplayObject3D);
		}
		
		public function mouseReleaseOutsodeObject(event:InteractiveScene3DEvent):void
		{
			if(this.isLeft){
				this.moveRight(400);
				this.isLeft = false;
			}else
			{
				this.moveLeft(400);
				this.isLeft = true;
			}
		}
	}
}