package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;

	import flash.events.MouseEvent;

	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.ColorMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.primitives.Cube;
	import org.papervision3d.objects.primitives.Cylinder;
	import org.papervision3d.objects.primitives.Sphere;

	public class DynamicHanger extends ModelProperties
	{	
			public var hangerBar:Cylinder;
			public var footer:Cube;
			public var tray1:Tray;
			public var tray2:Tray;
			public var tray3:Tray;

		public function DynamicHanger()
		{
			var cubesMaterialList:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial("pictures/tiles/2.jpg")})

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

			hangerBar = new Cylinder(new BitmapFileMaterial("pictures/tiles/2.jpg"),20,400);
			hangerBar.material.interactive = true;

			footer = new Cube(cubesMaterialList,100,100,5,1,1,1);
			tray1 = new Tray();
			tray2 = new Tray();
			tray3 = new Tray();

			setPosition(hangerBar,0,200,0);
			setPosition(footer,0,0,0);			
			setPosition(tray1,0,100,0);
			setPosition(tray2,0,200,0);
			setPosition(tray3,0,300,0);

			tray1.name = 'tray1';
			tray2.name = 'tray2';
			tray3.name = 'tray3';
			hangerBar.name = 'hangerBar';
			footer.name = 'footer';
			addChild(tray1);
			addChild(tray2);
			addChild(tray3);
			addChild(hangerBar);
			addChild(footer);
			//addChild(new Sphere(new ColorMaterial(0xffffff,50)));
		}
	}
}