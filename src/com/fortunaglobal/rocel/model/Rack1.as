package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.parsers.DAE;
	
	public class Rack1 extends ModelProperties
	{
		[Embed(source = "assets/Rack1.dae", mimeType="application/octet-stream")] private var LoadRack1:Class;
		
		public function Rack1()
		{
			//TODO: implement function	
			model = new LoadRack1();
			modelDAE = new DAE();
			modelMaterialList = new MaterialsList();
			modelDAE.load(XML( model ), modelMaterialList );
			
			modelDAE.name = 'modelDAE';
			addChild(modelDAE);
		}
	}
}