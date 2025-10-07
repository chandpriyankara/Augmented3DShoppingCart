package com.fortunaglobal.model
{
	import flash.display.Bitmap;
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import org.papervision3d.events.InteractiveScene3DEvent;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.parsers.DAE;
	
	/*Here will be the properties that are required properties of the model classes*/
	public class ModelProperties extends DisplayObject3D
	{
		public var uID:String;//defines the id that is requires to reference to the model object
		public var modelDAE:DAE;
		public var modelMaterialList:MaterialsList;
		public var model:Object;
		public var bitmap:Bitmap;
		private var modelCategory:int;
		
		public function get ModelCategory():int{return modelCategory;}
		public function set ModelCategory(value:int):void{modelCategory = value;}

		public function ModelProperties():void
		{
			id = 0;
		}
		
		public function getModelId():int
		{
			return id;
		}
		
		public function getDAE(): DAE
		{
			return modelDAE;
		}
		
		public function objectClicked(event:InteractiveScene3DEvent):void{
			Alert.show("Event Occured","event");
			x=event.x;
			y=event.y;
		}
		
		public function setPosition(paramDisplayObject3D:DisplayObject3D,
			paramx:Number,paramy:Number,paramz:Number):void
		{
			paramDisplayObject3D.x = paramx;
			paramDisplayObject3D.y = paramy;
			paramDisplayObject3D.z = paramz;						
		}

		public function mouseClick(event:MouseEvent):void
		{
						
		}
		
		public function loadData():void
		{
			
		}
	}
}