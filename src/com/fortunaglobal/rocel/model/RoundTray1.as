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
	
	import valueObjects.RoundRack1javaMaterial;

	public class RoundTray1 extends ModelProperties
	{
			public var plate:Cube;
			public var plateMaterialUrl:String;

		public function RoundTray1(plateMaterialUrlparam:String)
		{
			this.plateMaterialUrl = plateMaterialUrlparam;
			var traySubGroupDisplayObject3D:DisplayObject3D = new DisplayObject3D();
			var trayDisplayObject3D:DisplayObject3D = new DisplayObject3D();

			var plateMaterial:MaterialsList = new MaterialsList({
				all:new BitmapFileMaterial(plateMaterialUrl)});

			plate = new Cube(plateMaterial,100,100,1,1,1,1);
			plate.material.materialFilePath = plateMaterialUrl;
			plate.parentContainer = this;

			plate.material.interactive = true;

			setPosition(plate,50,0,50);

			plate.name = 'plate';
			traySubGroupDisplayObject3D.addChild(plate);

			traySubGroupDisplayObject3D.pitch(-90);

			traySubGroupDisplayObject3D.name = 'traySubGroupDisplayObject3D';
			trayDisplayObject3D.addChild(traySubGroupDisplayObject3D);
			
			trayDisplayObject3D.x += -50;
			trayDisplayObject3D.y += -22;
			trayDisplayObject3D.z += -150;

			//addChild(new Sphere(new ColorMaterial(0xffffff)));
			
			trayDisplayObject3D.name = 'trayDisplayObject3D';
			addChild(trayDisplayObject3D);
		}
		public function getMaterials():void//RoundRack1javaMaterial
		{
			//plate.
		}
	}
}