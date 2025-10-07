package com.fortunaglobal.rocel.model
{
	import com.fortunaglobal.model.ModelProperties;

	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.parsers.DAE;
	import org.papervision3d.objects.primitives.Cube;

	public class Room extends ModelProperties
	{
		[Embed(source = "assets/Room.dae", mimeType="application/octet-stream")][Bindable] private var LoadRoom:Class;
		//[Embed(source = "pictures/ourtex.jpg", mimeType="application/octet-stream")]private var LoadRoomBitmap:Class;

		public function Room()
		{
			model = new LoadRoom();
			modelDAE = new DAE();

			//TODO: implement function	
			//var bitmap :Bitmap;// = new LoadRoomBitmap();
			//var imgObj:BitmapAsset = new LoadRoomBitmap() as BitmapAsset;
			//var material:BitmapMaterial = new BitmapMaterial(imgObj.bitmapData, true);
			//material.doubleSided = true;

			var bitmapFileMaterial:BitmapFileMaterial = new BitmapFileMaterial("pictures/cow.png");     
			//bitmapFileMaterial.doubleSided = true;         
			//modelMaterialList = new MaterialsList({floorPlane:material,frontPlane1:material,frontPlane2:material});

//			modelMaterialList = new MaterialsList({
//			front:new BitmapFileMaterial("pictures/tiles/1.jpg"),
//			back:new BitmapFileMaterial("pictures/tiles/2.jpg"),
//			right:new BitmapFileMaterial("pictures/tiles/3.jpg"),
//			left:new BitmapFileMaterial("pictures/tiles/4.jpg"),
//			top:new BitmapFileMaterial("pictures/tiles/5.jpg"),
//			bottom:new BitmapFileMaterial("pictures/tiles/6.jpg")});

			//var box:Cube = new Cube(modelMaterialList,100,100,100,10,10,10);
			//modelDisplayObject3D.addChild(box,"box");

			var materialList:MaterialsList = new MaterialsList({
			'all':new BitmapFileMaterial("assets/Guitar/guitarTexture.png")
			//,stock :new BitmapFileMaterial("pictures/tiles/2.jpg")
			//,neck01 :new BitmapFileMaterial("pictures/tiles/3.jpg")
			//,instance_4 :new BitmapFileMaterial("pictures/tiles/4.jpg"),
			//,instance_4 :new BitmapFileMaterial("pictures/tiles/5.jpg"),
			//,instance_5 :new BitmapFileMaterial("pictures/tiles/6.jpg")
			});

			//var testmaterial:BitmapFileMaterial = new BitmapFileMaterial("pictures/tiles/2.jpg");
			modelDAE.load(XML( model ), materialList );
			//var child:DisplayObject3D = new DisplayObject3D();
			//trace("numchilds:" + modelDAE.getChildByName("COLLADA_Scene").numChildren);//neck01
			//dae.getChildByName("COLLADA_Scene").getChildByName("neck01");
			//child = modelDAE.getChildByName("COLLADA_Scene").getChildByName("neck01");
			//child.material = new BitmapFileMaterial("pictures/tiles/6.jpg");

			modelDAE.name = 'modelDAE';
			addChild(modelDAE);
		}
	}
}