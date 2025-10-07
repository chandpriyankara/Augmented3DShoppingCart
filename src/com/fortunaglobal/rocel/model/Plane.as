package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.parsers.DAE;
	
	public class Plane extends ModelProperties
	{
		[Embed(source = "assets/Plane.dae", mimeType="application/octet-stream")] private var LoadPlane:Class;
		
		public function Plane()
		{
			//TODO: implement function	
			var bitmapFileMaterial:BitmapFileMaterial = new BitmapFileMaterial("assets/plane/plane.jpg");
			var plane:Plane = new Plane(bitmapFileMaterial, 2000, 2000, 10, 10);
			plane.material.bitmap= new BitmapData(2000,2000,false,0x777777);
        	plane.material.doubleSided = true;
            plane.pitch(90);
            plane.y = -10;

			model = new LoadPlane();
			modelDAE = new DAE();
			modelMaterialList = new MaterialsList();
			modelDAE.load(XML( model ), modelMaterialList );
			
			modelDAE.name = 'modelDAE';
			addChild(modelDAE,"plane");
		}
	}
}