/*
 * 
 this package will load the 3d model from given path
 and return  a DAE object to the mxml animetion
 the class can work as a total object with other data types in itergrated with 
 the material list contains information on the matetials about the model 
 this class also supports to reference  the particles within a model
 */
package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;
	
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.parsers.DAE;
	
	public class MyModelBicycle extends ModelProperties
	{
		[Embed(source = "assets/Rack2.dae", mimeType="application/octet-stream")] private var MyModel:Class;
			
		public function MyModelBicycle()
		{
			//TODO: implement function	
			model = new MyModel();
			modelDAE = new DAE();
			modelMaterialList = new MaterialsList();
			modelDAE.load(XML( model ), modelMaterialList );
			
			modelDAE.name = 'modelDAE';
			addChild(modelDAE);
		}
	}
}