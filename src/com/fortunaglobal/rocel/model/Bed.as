package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.parsers.DAE;
	
	public class Bed extends ModelProperties
	{
		[Embed(source = "assets/Bed.dae", mimeType="application/octet-stream")] private var LoadBed:Class;
		
		public function Bed()
		{
			//TODO: implement function	
			model = new LoadBed();
			modelDAE = new DAE();
			modelMaterialList = new MaterialsList();
			modelDAE.load(XML( model ), modelMaterialList );
			
			modelDAE.name = 'modelDAE';
			addChild(modelDAE);
		}
	}
}