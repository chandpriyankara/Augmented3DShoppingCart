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

	public class Tray extends ModelProperties
	{	
			public var plate:Cube;
			public var corner:Cube;
			public var connectorBar:Cube;
			public var plateMaterialUrl:String = "pictures/tiles/1.jpg";
			public var cornerMaterialUrl:String = "pictures/tiles/2.jpg";

		public function Tray()
		{
			var traySubGroupDisplayObject3D:DisplayObject3D = new DisplayObject3D();
			var trayDisplayObject3D:DisplayObject3D = new DisplayObject3D();

			var plateMaterial:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial(plateMaterialUrl)});

			var cornerMaterial:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial(cornerMaterialUrl)});

			plate = new Cube(plateMaterial,100,100,5,1,1,1);
			corner = new Cube(cornerMaterial,100,5,10,1,1,1);
			connectorBar = new Cube(cornerMaterial,5,110,5,1,1,1);

			plate.parentContainer = this;
			corner.parentContainer = this;
			connectorBar.parentContainer = this;

			plate.material.interactive = true;
			corner.material.interactive = true;
			connectorBar.material.interactive = true;

			setPosition(plate,50,0,50);
			setPosition(corner,50,2.5,-2.5);
			setPosition(connectorBar,50,22,97);

			plate.name = 'plate';
			corner.name = 'corner';
			traySubGroupDisplayObject3D.addChild(plate);
			traySubGroupDisplayObject3D.addChild(corner);

			traySubGroupDisplayObject3D.pitch(-30);

			connectorBar.name = 'connectorBar';
			traySubGroupDisplayObject3D.name = 'traySubGroupDisplayObject3D';
			trayDisplayObject3D.addChild(connectorBar);
			trayDisplayObject3D.addChild(traySubGroupDisplayObject3D);
			
			trayDisplayObject3D.x += -50;
			trayDisplayObject3D.y += -22;
			trayDisplayObject3D.z += -150;

			//addChild(new Sphere(new ColorMaterial(0xffffff)));
			
			trayDisplayObject3D.name = 'trayDisplayObject3D';
			addChild(trayDisplayObject3D);
		}
	}
}