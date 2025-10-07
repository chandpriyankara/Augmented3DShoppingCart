import com.fortunaglobal.rocel.model.Guitar;
import com.fortunaglobal.rocel.model.Rack1;
import com.fortunaglobal.rocel.model.Rack2;
import com.fortunaglobal.rocel.model.Room;

import mx.core.UIComponent;

import org.papervision3d.cameras.RocellCamera3D;
import org.papervision3d.core.utils.Mouse3D;
import org.papervision3d.lights.PointLight3D;
import org.papervision3d.materials.BitmapFileMaterial;
import org.papervision3d.objects.DisplayObject3D;
import org.papervision3d.objects.primitives.Cone;
import org.papervision3d.render.BasicRenderEngine;
import org.papervision3d.scenes.Scene3D;
import org.papervision3d.view.Viewport3D;

private var renderer:BasicRenderEngine;
private var scene:Scene3D; 
private var viewport:Viewport3D; 
private var camera:RocellCamera3D;
private var rack1DisplayObject3D :DisplayObject3D;  
private var rack2DisplayObject3D:DisplayObject3D;
private var guitarDisplayObject3D:DisplayObject3D;
private var roomDisplayObject3D:DisplayObject3D;
private var currentDisplayObject3D:DisplayObject3D;

//[Embed(source = "pictures/ourtex.jpg", mimeType="application/octet-stream")] private var LoadGuitarTexture:Class;
	
	protected function onInit( event:Event ) : void {  
		renderer = new BasicRenderEngine();
		scene = new Scene3D(); 
		viewport = new Viewport3D(640,480,true,true);
		camera = new RocellCamera3D(viewport);
	
		var flexComp:UIComponent = new UIComponent();  
		viewCanvas.addChild( flexComp );//viewCanvas is the ID that belongs to the canvas of the mxml file
		flexComp.addChild( viewport );   // bind a User interface i/o to canvas
		loadObjects();
//		var light:PointLight3D = new PointLight3D( true,true );  
//		var material:FlatShadeMaterial = new FlatShadeMaterial(light, 0xeeeeee, 0x2d2d2d);
//		material.interactive = true;// configure the materials, so to get ready to catch user inputs
//		var sphere:Sphere = new Sphere(material);
//		scene.addChild(sphere);

 		//var cone:Cone = new Cone(new BitmapFileMaterial(new LoadGuitarTexture()), 20, 200);
		//scene.addChild(cone);
		viewCanvas.addEventListener(Event.ENTER_FRAME,onEnterFrame);  
//		var bitmapFileMaterial:BitmapFileMaterial = new BitmapFileMaterial("pictures/ourtex.jpg"); 
//		var wireframeMaterial:WireframeMaterial = new WireframeMaterial(0x333333); 
//		var plane:Plane = new Plane(bitmapFileMaterial, 2000, 2000, 10, 10);
//		plane.material.bitmap= new BitmapData(2000,2000,false,0x777777);
//      plane.material.doubleSided = true;
//      plane.pitch(90);
//      plane.y = -10;
//		scene.addChild(plane);
		//viewport.addEventListener(MouseEvent.MOUSE_MOVE,drag);
	}
	
	private function loadObjects():void{
		loadRack1();
		//loadRack2();
		//loadGuitar();
		//loadRoom();
	}
	
	private function drag(event:MouseEvent):void{
		rack2DisplayObject3D.x=viewport.containerSprite.mouseX;
		rack2DisplayObject3D.y=viewport.containerSprite.mouseY;
	}
	
	private function loadGuitar() : void {
		if ( guitarDisplayObject3D != null )  
		scene.removeChild( guitarDisplayObject3D );  
		var light:PointLight3D = new PointLight3D( true,true );  
		light.z = -2000;  
		light.x = 500;  
		light.y = 500;  
		var lightColor:uint = 0x111111; 
		var mytmpModel:Guitar = new Guitar();		 
		guitarDisplayObject3D = scene.addChild(mytmpModel);
		guitarDisplayObject3D.x = 0;
		guitarDisplayObject3D.y = 0;
		light.lookAt(guitarDisplayObject3D);
		guitarDisplayObject3D.scale = .5;
	} 
	
	private function loadRoom() : void {
		if ( roomDisplayObject3D != null )  
		scene.removeChild( roomDisplayObject3D );  
		var light:PointLight3D = new PointLight3D( true,true );  
		light.z = -2000;  
		light.x = 500;  
		light.y = 500;
		
		var bitmapFileMaterial:BitmapFileMaterial = 
			new BitmapFileMaterial("pictures/ourtex.jpg");
		bitmapFileMaterial.doubleSided = true;

		var mytmpModel:Room = new Room();		 
		roomDisplayObject3D = scene.addChild( mytmpModel);
		roomDisplayObject3D.x = 0;
		roomDisplayObject3D.y = 0;
		//trace(roomDisplayObject3D.material+ "TESTING");
		//roomDisplayObject3D. =bitmapFileMaterial;
		light.lookAt(roomDisplayObject3D);
		roomDisplayObject3D.scale = 5;
	} 
	
	private function loadRack1() : void {
		 if ( rack1DisplayObject3D != null )
		 scene.removeChild( rack1DisplayObject3D );
		 var light:PointLight3D = new PointLight3D( true,true );   
		 var lightColor:uint = 0x111111; 
		 var bed:Rack1 = new Rack1();
		 rack1DisplayObject3D = scene.addChild(bed);
		 light.lookAt(rack1DisplayObject3D);
		 rack1DisplayObject3D.scale = 5;
	}  

	private function loadRack2() : void {
		 if ( rack2DisplayObject3D != null )
		 scene.removeChild( rack2DisplayObject3D );
		 var light:PointLight3D = new PointLight3D( true,true );   
		 var lightColor:uint = 0x111111; 
		 var rack2:Rack2 = new Rack2();
		 rack2DisplayObject3D = scene.addChild(rack2);
		 light.lookAt(rack2DisplayObject3D);
		 rack2DisplayObject3D.scale = 10;
	}  

	private function onEnterFrame( event : Event ):void  
	{  
		 renderer.renderScene(scene,camera,viewport);
	}