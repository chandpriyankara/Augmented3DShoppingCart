package com.fortunaglobal.rocel.model
{
	
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.events.InteractiveScene3DEvent;
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.parsers.DAE;
	

	
	public class  Guitar extends ModelProperties
	{
		[Embed(source = "assets/Guitar.dae", mimeType="application/octet-stream")] private var LoadGuitar:Class;
		[Embed(source = "assets/Guitar/guitarTexture.png", mimeType="application/octet-stream")] private var LoadGuitarTexture:Class;
		
		public function Guitar()
		{
			//TODO: implement function	
			//model = new LoadGuitar();
			modelDAE = new DAE();
			modelMaterialList = new MaterialsList();
			//modelMaterialList.addMaterial(new BitmapFileMaterial( new LoadGuitarTexture()))
			modelDAE.load(XML( model ), modelMaterialList );
			//modelDisplayObject3D.materials.addMaterial(new BitmapFileMaterial(XML( new LoadGuitarTexture() )));
			//modelDisplayObject3D.material.interactive = true;
			yaw(5);
			addEventListener(InteractiveScene3DEvent.OBJECT_PRESS,objectClicked);
			
			modelDAE.name = 'modelDAE';
			addChild(modelDAE);

		}
	}
}