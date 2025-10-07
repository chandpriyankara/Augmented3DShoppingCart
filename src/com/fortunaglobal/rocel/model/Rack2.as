package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.parsers.DAE;
	
	public class Rack2 extends ModelProperties
	{
		[Embed(source = "assets/Rack2.dae", mimeType="application/octet-stream")] private var LoadRack2:Class;
		public function Rack2()
		{
			//TODO: implement function	
			model = new LoadRack2();
			modelDAE = new DAE();
			modelMaterialList = new MaterialsList();
			modelDAE.load(XML( model ), modelMaterialList );
			
			modelDAE.name = 'modelDAE';
			addChild(modelDAE);
		}
	}
}