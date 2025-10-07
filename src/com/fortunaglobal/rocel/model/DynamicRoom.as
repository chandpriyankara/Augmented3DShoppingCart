package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;

	import org.papervision3d.materials.BitmapAssetMaterial;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.primitives.Cube;

	public class DynamicRoom extends ModelProperties
	{
		public var wall1:Cube;
		public var wall2:Cube;
		public var wall3:Cube;
		public var wall4:Cube;
		public var floor:Cube;
		
		public function DynamicRoom()
		{
			//var floor:Plane;

			var cubesMaterialList:MaterialsList = new MaterialsList({
				front:new BitmapFileMaterial("pictures/tiles/1.jpg"),
				back:new BitmapFileMaterial("pictures/tiles/2.jpg"),
				right:new BitmapFileMaterial("pictures/tiles/3.jpg"),
				left:new BitmapFileMaterial("pictures/tiles/4.jpg"),
				top:new BitmapFileMaterial("pictures/tiles/5.jpg"),
				bottom:new BitmapFileMaterial("pictures/tiles/6.jpg")});

			var wall1Material:BitmapFileMaterial = new BitmapFileMaterial('pictures/wall6.jpg');
			var wall2Material:BitmapFileMaterial = new BitmapFileMaterial('pictures/wall6.jpg');
			var wall3Material:BitmapFileMaterial = new BitmapFileMaterial('pictures/wall6.jpg');
			var wall4Material:BitmapFileMaterial = new BitmapFileMaterial('pictures/wall6.jpg');
			var wall5Material:BitmapFileMaterial = new BitmapFileMaterial('pictures/wall4.jpg');
			var wall6Material:BitmapFileMaterial = new BitmapFileMaterial('pictures/wall4.jpg');

			wall1Material.resetMapping();
			wall1Material.tiled = true;
			wall1Material.maxU = 5;
			wall1Material.maxV = 5;
			wall2Material.resetMapping();
			wall2Material.resetUVS();
			wall2Material.tiled = true;
			wall2Material.maxU = 5;
			wall2Material.maxV = 5;
			wall3Material.tiled = true;
			wall3Material.maxU = 5;
			wall3Material.maxV = 5;
			wall3Material.resetMapping();	
			wall4Material.tiled = true;
			wall4Material.maxU = 5;
			wall4Material.maxV = 5;
			wall4Material.resetMapping();
			wall5Material.tiled = true;
			wall5Material.maxU = 5;
			wall5Material.maxV = 5;
			wall5Material.resetMapping();
			wall6Material.tiled = true;
			wall6Material.maxU = 5;
			wall6Material.maxV = 5;
			wall6Material.resetMapping();

			var cubesMaterialList2:MaterialsList = new MaterialsList({
				front:wall1Material,
				back:wall2Material,
				right:wall3Material,
				left:wall4Material,
				top:wall5Material,
				bottom:wall6Material});


//			cubesMaterialList.getMaterialByName('front').interactive = false;
//			cubesMaterialList.getMaterialByName('back').interactive = false;
//			cubesMaterialList.getMaterialByName('right').interactive = false;
//			cubesMaterialList.getMaterialByName('left').interactive = false;
//			cubesMaterialList.getMaterialByName('top').interactive = false;
//			cubesMaterialList.getMaterialByName('bottom').interactive = false;
//
//			cubesMaterialList.getMaterialByName('front').doubleSided = false;
//			cubesMaterialList.getMaterialByName('back').doubleSided = false;
//			cubesMaterialList.getMaterialByName('right').doubleSided = false;
//			cubesMaterialList.getMaterialByName('left').doubleSided = false;
//			cubesMaterialList.getMaterialByName('top').doubleSided = false;
//			cubesMaterialList.getMaterialByName('bottom').doubleSided = false;
//
//			cubesMaterialList.getMaterialByName('front')
//				.addEventListener(MouseEvent.CLICK,mouseClick);
//			cubesMaterialList.getMaterialByName('back')
//				.addEventListener(MouseEvent.CLICK,mouseClick);
//			cubesMaterialList.getMaterialByName('right')
//				.addEventListener(MouseEvent.CLICK,mouseClick);
//			cubesMaterialList.getMaterialByName('left')
//				.addEventListener(MouseEvent.CLICK,mouseClick);
//			cubesMaterialList.getMaterialByName('top')
//				.addEventListener(MouseEvent.CLICK,mouseClick);
//			cubesMaterialList.getMaterialByName('bottom')
//				.addEventListener(MouseEvent.CLICK,mouseClick);

			wall1 = new Cube(cubesMaterialList2,5,2000,500,5,5,5);
			wall2 = new Cube(cubesMaterialList2,2000,5,500,5,5,5);
			wall3 = new Cube(cubesMaterialList2,5,2000,500,5,5,5);
			wall4 = new Cube(cubesMaterialList2,2000,5,500,5,5,5);
			floor = new Cube(cubesMaterialList2,2000,2000,1,10,10,5);
			//floor = new Plane();//Cube(cubesMaterialList,2000,2000,1,10,10,5);
			//floor.material = new bitm

			wall1.material.interactive = true;
			wall2.material.interactive = true;
			wall3.material.interactive = true;
			wall4.material.interactive = true;
			floor.material.interactive = true;

			setPosition(wall1,0,250,1000);
			setPosition(wall2,1000,250,2000);
			setPosition(wall3,2000,250,1000);
			setPosition(wall4,1000,250,0);
			setPosition(floor,1000,0,1000);

			wall1.name = 'wall1';
			wall2.name = 'wall2';
			wall3.name = 'wall3';
			wall4.name = 'wall4';
			floor.name = 'floor';

			addChild(wall1);
			addChild(wall2);
			addChild(wall3);
			addChild(wall4);
			addChild(floor);
		}
	}
}