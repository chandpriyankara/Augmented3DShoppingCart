// ActionScript file

import com.adobe.fiber.runtime.lib.ConversionFunc;
import com.fortunaglobal.model.PlaneReflection;
import com.fortunaglobal.model.ShadowCaster;
import com.fortunaglobal.rocel.model.DynamicHanger;
import com.fortunaglobal.rocel.model.DynamicRack1;
import com.fortunaglobal.rocel.model.DynamicRoom;
import com.fortunaglobal.rocel.model.Rack1;
import com.fortunaglobal.rocel.model.Rack2;
import com.fortunaglobal.rocel.model.RolleRack1;
import com.fortunaglobal.rocel.model.Room;
import com.fortunaglobal.rocel.model.RoundRack1;
import com.fortunaglobal.rocel.model.RoundTray1;
import com.fortunaglobal.rocel.model.Tray;
import com.notifications.Notification;

import flash.display.Sprite;
import flash.errors.IOError;
import flash.events.ContextMenuEvent;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.BlurFilter;
import flash.net.URLRequest;
import flash.net.navigateToURL;
import flash.ui.ContextMenu;
import flash.ui.ContextMenuItem;
import flash.ui.Mouse;
import flash.ui.MouseCursor;
import flash.utils.ByteArray;

import mx.collections.ArrayCollection;
import mx.collections.ArrayList;
import mx.containers.HBox;
import mx.controls.Alert;
import mx.controls.List;
import mx.core.Application;
import mx.core.FlexGlobals;
import mx.core.UIComponent;
import mx.managers.PopUpManager;
import mx.messaging.events.MessageAckEvent;
import mx.messaging.events.MessageEvent;
import mx.rpc.AsyncToken;
import mx.rpc.CallResponder;
import mx.rpc.events.FaultEvent;
import mx.rpc.events.ResultEvent;
import mx.rpc.remoting.mxml.RemoteObject;
import mx.utils.ObjectUtil;
import mx.utils.UIDUtil;

import org.papervision3d.cameras.RocellCamera3D;
import org.papervision3d.core.effects.view.ReflectionView;
import org.papervision3d.core.geom.Lines3D;
import org.papervision3d.core.geom.renderables.Line3D;
import org.papervision3d.core.geom.renderables.Vertex3D;
import org.papervision3d.core.math.Number3D;
import org.papervision3d.core.math.Plane3D;
import org.papervision3d.core.proto.MaterialObject3D;
import org.papervision3d.core.render.data.RenderHitData;
import org.papervision3d.events.InteractiveScene3DEvent;
import org.papervision3d.lights.PointLight3D;
import org.papervision3d.materials.BitmapFileMaterial;
import org.papervision3d.materials.MovieMaterial;
import org.papervision3d.materials.special.LineMaterial;
import org.papervision3d.objects.DisplayObject3D;
import org.papervision3d.objects.primitives.Plane;
import org.papervision3d.objects.primitives.Sphere;
import org.papervision3d.render.BasicRenderEngine;
import org.papervision3d.scenes.Scene3D;
import org.papervision3d.view.Viewport3D;

import services.ComplexRIADTO;

import valueObjects.ComplexRIA;
import valueObjects.DynamicRack1java;
import valueObjects.RolleRack1java;
import valueObjects.RolleRack1javaMaterial;
import valueObjects.RoundRack1java;
import valueObjects.RoundRack1javaMaterial;

private var renderer:BasicRenderEngine;
private var reflector:PlaneReflection;
private var scene:Scene3D; 
private var viewport:Viewport3D; 
private var camera:RocellCamera3D;
private var currentSelectedDisplayObject3D:DisplayObject3D;
private var currentMovingDisplayObject3D:DisplayObject3D;
private var currentPressedDisplayObject3D:DisplayObject3D;
private var flexComp:UIComponent;
//private var box:Cube;
private var sphere:Sphere;
private var reflectorPlane:Plane;
private var plane3D:Plane3D;
private var angC:Number= 0;
private var isaltKeyPressed:Boolean = false;
private var isctrlKeyPressed:Boolean = false;
private var isshiftKeyPressed:Boolean = false;
private var isDragging:Boolean = false;
private var isPressed:Boolean = false;
private var objectSelected:Boolean = false;
private var materalChange:Boolean = false;
private var materialSelected:Boolean = false;
private var tray:Tray;
//private	var dynamicRack1:DynamicRack1;
private var dynamicHanger:DynamicHanger;
private var rolleRack1:RolleRack1;
private var light1:PointLight3D;
private var shadowCaster:ShadowCaster;
private var shadowSprite:Sprite;
private var shadowMovieMaterial:MovieMaterial;
private var shadowPlane:Plane;
private var roomDisplayObject3D:DisplayObject3D;
private var dynamicRoom:DynamicRoom;
private var oldmat:MaterialObject3D;
private var mouseMat:MaterialObject3D;
private var selectedMaterial:MaterialObject3D;

private var roundRack1NewList:ArrayCollection;//3D object arrays
private var rolleRack1NewList:ArrayCollection;// these cotains java objects as well
private var dynamicRack1NewList:ArrayCollection;
private var roundRack1ExistingList:ArrayCollection;
private var rolleRack1ExistingList:ArrayCollection;
private var dynamicRack1ExistingList:ArrayCollection;

//private var roundRack1NewList:Array;//3D object arrays
//private var rolleRack1NewList:Array;// these cotains java objects as well
//private var dynamicRack1NewList:Array;
//private var roundRack1List:Array;
//private var rolleRack1List:Array;
//private var dynamicRack1List:Array;

//private var roundRack1javaDTO:RoundRack1javaDTO;
//private var complexRIADTO:ComplexRIADTO;

protected function onInit( event:Event ) : void
{	
	var value:*;
	roundRack1NewList = new ArrayCollection(value);
	rolleRack1NewList = new ArrayCollection(value);
	dynamicRack1NewList = new ArrayCollection(value);
	roundRack1ExistingList = new ArrayCollection(value);
	rolleRack1ExistingList = new ArrayCollection(value);
	dynamicRack1ExistingList = new ArrayCollection(value);
	
	
	
	//	roundRack1NewList = new Array();
	//	rolleRack1NewList = new Array();
	//	dynamicRack1NewList = new Array();
	//	roundRack1List = new Array();
	//	rolleRack1List = new Array();
	//	dynamicRack1List = new Array();
	
	renderer = new BasicRenderEngine();
	scene = new Scene3D();
	viewport = new Viewport3D(800,600,true,true);
	mouseMat = new BitmapFileMaterial();
	selectedMaterial = new BitmapFileMaterial();
	
	//var glow:GlowFilter = new GlowFilter(0xcccc00, 1, 20, 20, 4, 3);
	
	//viewport.filters = [glow];
	
	camera = new RocellCamera3D(viewport);//load the custom made camera object (chandpriyanakra@fortunaglobal.com)
	camera.focus = 45;
	camera.fov = 35;
	camera.x = 1000;
	camera.y = 1000;
	camera.z = 0;
	//camera = new Camera3D(18,46,5000,false,false);
	camera.displayPropertieWindow = true;
	viewport.interactive = true;// this is essential in sort of adding the interactivity to the total scene
	camera.mouseNavigation = true;// initially camera is moving with mouse wheel rotation
	isDragging  = false;// initially no object is moving
	//viewport.buttonMode = true;
	//reflector = new PlaneReflection("reflex", "multiply", 1, [new BlurFilter()]);
	
	//var spr:Sprite;
	//var sprMaterial:MovieMaterial;
	//spr = new Sprite();
	//spr.graphics.beginFill(Color.green,1);
	//spr.graphics.drawRect(0, 0, 256, 256);
	//sprMaterial = new MovieMaterial(spr, false, true);
	//reflectorPlane = new Plane(sprMaterial, 2000, 2000);
	
	//scene.addChild(reflector);
	//viewport.addEventListener(MouseEvent.MOUSE_UP,handleRelease);
	
	flexComp = new UIComponent();
	tCanvas.addChild( flexComp );//viewCanvas is the ID that belongs to the canvas of the mxml file
	flexComp.addChild( viewport );// bind a User interface i/o to canvas
	
	//make the whole canvas interactive
	tCanvas.addEventListener(Event.ENTER_FRAME,onEnterFrame);
	viewport.addEventListener(MouseEvent.MOUSE_MOVE,keyDown);
	loadModels();
	//createShadow();//
	//contentMenuUpdate();//this will change the right-click menu	
	
	//RequestToLoadSavedModels();
	sendToClient();
}

// this will generate the essential materials for making a shadow object
// there chandpriyankara@fortunaglobal.com has used a seperate class to load the functions required for.
// com.fortunaglobal.model.ShadowCaste.as

private function keyDown(event:MouseEvent):void
{
	isaltKeyPressed = event.altKey;
	isctrlKeyPressed = event.ctrlKey;
	isshiftKeyPressed = event.shiftKey;
}

private function createShadow():void
{
	light1 = new PointLight3D();
	light1.x = 1000;
	light1.y = 1000;
	light1.z = 1000;
	shadowCaster = new ShadowCaster("shadow", 0x000000, BlendMode.MULTIPLY, .3,
		[new BlurFilter(10, 10, 1)]);
	shadowSprite = new Sprite();
	shadowCaster.setType(ShadowCaster.SPOTLIGHT);
	shadowSprite.graphics.beginFill(0xFFFFFF,0);
	shadowSprite.graphics.drawRect(0,0,1000,1000);
	shadowMovieMaterial = new MovieMaterial(shadowSprite, true, true, true);
	shadowPlane = new Plane(shadowMovieMaterial, 2000, 2000, 2,2);
	shadowPlane.rotationX = 90;
	shadowPlane.x = 1000;
	shadowPlane.y = 5;
	shadowPlane.z = 1000;
	scene.addChild(shadowPlane);
}

private function loadModels():void
{
	// zero point marker
	//var materialList:MaterialsList = 
	//	new MaterialsList(new ColorMaterial(0x777777));
	//scene.addChild(new Cube(materialList,150,150,150),'centre');
	// used to get a reference point as centre of the scene
	
	//loadModel();
	//loadRoom();
	//loadRack1();
	//loadRack2();
	loadDynamicRoom();
	//loadRolleRack1();
	//loadDynamicRack1();
	
	//drawGrid();
	//loadTray();
	
	//trace(scene);
	
}

public function fortunaGlobalweb():void
{
	var url:URLRequest = new URLRequest('http://www.fortunaglobal.com');
	navigateToURL(url);
}

public function loadDynamicRoom():void 
{
	dynamicRoom = new DynamicRoom();
	scene.addChild(dynamicRoom);
}

public function loadDynamicHanger():void 
{
	dynamicHanger = new DynamicHanger();
	dynamicHanger.setPosition(dynamicHanger,100,15,1500);
	scene.addChild(dynamicHanger);
}

public function defaultrolleRack1javaMaterial():RolleRack1javaMaterial
{
	var rolleRack1javaMaterial:RolleRack1javaMaterial = new RolleRack1javaMaterial();
	
	rolleRack1javaMaterial.hangerBar1BitmapFileMaterialUrl = "pictures/tower.jpg";
	rolleRack1javaMaterial.hangerBar2BitmapFileMaterialUrl = "pictures/tower.jpg";
	rolleRack1javaMaterial.footcubesMaterialListUrl = "pictures/metal.jpg";
	rolleRack1javaMaterial.panelcubesMaterialListUrl = "pictures/metal.jpg";

	rolleRack1javaMaterial.rolleTray4x41plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x41plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x42plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x43plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x44plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x45plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x46plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x47plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x48plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x49plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x410plateMaterialList16Url = "pictures/tiles/16.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList1Url = "pictures/tiles/1.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList2Url = "pictures/tiles/2.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList3Url = "pictures/tiles/3.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList4Url = "pictures/tiles/4.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList5Url = "pictures/tiles/5.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList6Url = "pictures/tiles/6.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList7Url = "pictures/tiles/7.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList8Url = "pictures/tiles/8.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList9Url = "pictures/tiles/9.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList10Url = "pictures/tiles/10.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList11Url = "pictures/tiles/11.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList12Url = "pictures/tiles/12.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList13Url = "pictures/tiles/13.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList14Url = "pictures/tiles/14.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList15Url = "pictures/tiles/15.jpg";
	rolleRack1javaMaterial.rolleTray4x411plateMaterialList16Url = "pictures/tiles/16.jpg";

	rolleRack1javaMaterial.rolleRack1javaMaterialname = "from client_chand";
	return rolleRack1javaMaterial;
}

public function loadNewRolleRack1(rolleRack1java:RolleRack1java):DisplayObject3D 
{
	var rolleRack1:RolleRack1;
	if(rolleRack1java==null)
	{
		//add new dynamicRack1java
		
		rolleRack1java = new RolleRack1java();
		rolleRack1java.rolleRack1javaMaterial = defaultrolleRack1javaMaterial();
		rolleRack1 = new RolleRack1(rolleRack1java.rolleRack1javaMaterial);
		rolleRack1.javaObject = rolleRack1java;
		rolleRack1.javaObject.name = UIDUtil.createUID();
		rolleRack1.javaObject.object3DType = 3;
		rolleRack1.name=rolleRack1.javaObject.name//most important part which assigns backend UID value to Client UID
	}
	else{
		//loaded values from DB
		var rolleRack1javaMaterial:RolleRack1javaMaterial = rolleRack1java.rolleRack1javaMaterial;
		rolleRack1 = new RolleRack1(rolleRack1javaMaterial);
		rolleRack1.javaObject = rolleRack1java;
		rolleRack1.rotationX = rolleRack1java.rotationX;
		rolleRack1.rotationY = rolleRack1java.rotationY;
		rolleRack1.rotationZ = rolleRack1java.rotationZ;
		rolleRack1.scale = (rolleRack1java.scale)/10;
		rolleRack1.x = rolleRack1java.x;
		rolleRack1.y = rolleRack1java.y;
		rolleRack1.z = rolleRack1java.z;
	}
	rolleRack1.rolleRack1EventDispachPress = rolleRack1EventDispachDrag;
	rolleRack1.rolleRack1EventDispachDrag = rolleRack1EventDispachDrag;
	rolleRack1.rolleRack1EventDispachRelease = rolleRack1EventDispachRelease;
	
	rolleRack1.handlePresss = handlePresss;
	rolleRack1.handleDrag= handleDrag;
	rolleRack1.handleRelease = handleRelease;
	
	rolleRack1.mouseClickObject = mouseClickObject;
	rolleRack1.mouseOverAwayObject = mouseOverAwayObject;
	rolleRack1.mouseOverObject = mouseOverObject;
	
	rolleRack1.eventActions(mouseClickObject,
		mouseOverAwayObject,mouseOverObject,rolleRack1EventDispachPress,
		rolleRack1EventDispachRelease,rolleRack1EventDispachDrag,
		handlePresss,handleDrag,handleRelease);
	rolleRack1.name = 'rolleRack1';
	
	addParentContainer(rolleRack1,rolleRack1);
	
	return rolleRack1;
	////////////////////////
}

public function loadNewDynamicRack1(dynamicRack1java:DynamicRack1java):DisplayObject3D
{
	var dynamicRack1:DynamicRack1 = new DynamicRack1();
	dynamicRack1.setPosition(dynamicRack1,100,15,1500);
	
	dynamicRack1.dynamicRack1EventDispachPress = dynamicRack1EventDispachDrag;//dynamicRack1EventDispachPress
	dynamicRack1.dynamicRack1EventDispachDrag = dynamicRack1EventDispachDrag;
	dynamicRack1.dynamicRack1EventDispachRelease = 
		dynamicRack1EventDispachRelease;
	
	dynamicRack1.handlePresss = handlePresss;
	dynamicRack1.handleDrag= handleDrag;
	dynamicRack1.handleRelease = handleRelease;
	
	dynamicRack1.mouseClickObject = mouseClickObject;
	dynamicRack1.mouseOverAwayObject = mouseOverAwayObject;
	dynamicRack1.mouseOverObject = mouseOverObject;
	
	dynamicRack1.eventActions(mouseClickObject,mouseOverAwayObject,
		mouseOverObject,dynamicRack1EventDispachPress,
		dynamicRack1EventDispachRelease,dynamicRack1EventDispachDrag,
		handlePresss,handleDrag,handleRelease);
	dynamicRack1.name = 'dynamicRack1';
	
	addParentContainer(dynamicRack1,dynamicRack1);
	
	if(dynamicRack1java==null)
	{
		//add new dynamicRack1java
		dynamicRack1java = new DynamicRack1java();
		dynamicRack1.javaObject = dynamicRack1java;
		dynamicRack1.javaObject.name = UIDUtil.createUID();
		dynamicRack1.javaObject.object3DType = 2;
		dynamicRack1.name=dynamicRack1.javaObject.name//most important part which assigns backend UID value to Client UID
	}
	else{
		//loaded values from DB
		dynamicRack1.javaObject = dynamicRack1java;
		dynamicRack1.rotationX = dynamicRack1java.rotationX;
		dynamicRack1.rotationY = dynamicRack1java.rotationY;
		dynamicRack1.rotationZ = dynamicRack1java.rotationZ;
		dynamicRack1.scale = (dynamicRack1java.scale)/10;
		dynamicRack1.x = dynamicRack1java.x;
		dynamicRack1.y = dynamicRack1java.y;
		dynamicRack1.z = dynamicRack1java.z;
	}
	return dynamicRack1;
}
public function defaultroundRack1javaMaterial():RoundRack1javaMaterial
{
	var roundRack1javaMaterial:RoundRack1javaMaterial = new RoundRack1javaMaterial();
	roundRack1javaMaterial.roundTray11plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray12plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray13plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray14plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray15plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray16plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray17plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray18plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray19plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray110plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray111plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray112plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray113plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray114plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray115plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray116plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray117plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray118plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray119plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray120plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.roundTray121plateMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.cubesMaterialListUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.cylinderBitmapFileMaterialUrl = "pictures/tiles/2.jpg";
	roundRack1javaMaterial.trayplateMaterialUrl = "pictures/tiles/2.jpg";
	
	return roundRack1javaMaterial;
}

public function loadNewRoundRack1(roundRack1java:RoundRack1java):DisplayObject3D 
{	
	var roundRack1:RoundRack1;
	if(roundRack1java==null)
	{
		//add new dynamicRack1java
		
		roundRack1java = new RoundRack1java();
		roundRack1java.roundRack1javaMaterial = defaultroundRack1javaMaterial();
		roundRack1 = new RoundRack1(roundRack1java.roundRack1javaMaterial);
		roundRack1.javaObject = roundRack1java;
		roundRack1.javaObject.name = UIDUtil.createUID();
		roundRack1.javaObject.object3DType = 1;
		roundRack1.name=roundRack1.javaObject.name//most important part which assigns backend UID value to Client UID
	}
	else{
		//loaded values from DB
		var roundRack1javaMaterial:RoundRack1javaMaterial = roundRack1java.roundRack1javaMaterial;
		roundRack1 = new RoundRack1(roundRack1javaMaterial);
		roundRack1.javaObject = roundRack1java;
		roundRack1.rotationX = roundRack1java.rotationX;
		roundRack1.rotationY = roundRack1java.rotationY;
		roundRack1.rotationZ = roundRack1java.rotationZ;
		roundRack1.scale = (roundRack1java.scale)/10;
		roundRack1.x = roundRack1java.x;
		roundRack1.y = roundRack1java.y;
		roundRack1.z = roundRack1java.z;
	}
	
	roundRack1.roundRack1EventDispachPress = roundRack1EventDispachDrag;
	roundRack1.roundRack1EventDispachDrag = roundRack1EventDispachDrag;
	roundRack1.roundRack1EventDispachRelease = roundRack1EventDispachRelease;
	
	roundRack1.handlePresss = handlePresss;
	roundRack1.handleDrag= handleDrag;
	roundRack1.handleRelease = handleRelease;
	
	roundRack1.mouseClickObject = mouseClickObject;
	roundRack1.mouseOverAwayObject = mouseOverAwayObject;
	roundRack1.mouseOverObject = mouseOverObject;
	
	roundRack1.eventActions(mouseClickObject,mouseOverAwayObject,
		mouseOverObject,roundRack1EventDispachPress,
		roundRack1EventDispachRelease,roundRack1EventDispachDrag,
		handlePresss,handleDrag,handleRelease);
	roundRack1.name = 'roundRack1';
	
	addParentContainer(roundRack1,roundRack1);
	
	return roundRack1;
}

private function rolleRack1EventDispachPress(event:InteractiveScene3DEvent):void
{
	isPressed = true;
	trace("rolleRack1 pressed" + event.target);
}

private function rolleRack1EventDispachRelease(
	event:InteractiveScene3DEvent):void
{// this function can't have other params
	trace("rolleRack1 Released");
	event.displayObject3D.parentContainer.dispatchEvent(
		new InteractiveScene3DEvent(InteractiveScene3DEvent.
			OBJECT_RELEASE,event.displayObject3D.parentContainer));
}

private function rolleRack1EventDispachDrag(event:InteractiveScene3DEvent):void
{
	if(isPressed)
	{
		trace("rolleRack1 Drag" + event.target);
		event.displayObject3D.parentContainer.dispatchEvent(
			new InteractiveScene3DEvent(InteractiveScene3DEvent
				.OBJECT_MOVE,event.displayObject3D.parentContainer));
	}
}
private function roundRack1EventDispachPress(event:InteractiveScene3DEvent):void
{
	isPressed = true;
	trace("roundRack1 pressed" + event.target);
	//		dynamicRack1.dispatchEvent(
	//			new InteractiveScene3DEvent(InteractiveScene3DEvent
	//				.OBJECT_PRESS,dynamicRack1));
}

private function roundRack1EventDispachRelease(
	event:InteractiveScene3DEvent):void
{// this function can't have other params
	trace("roundRack1 Released");
	event.displayObject3D.parentContainer.dispatchEvent(
		new InteractiveScene3DEvent(InteractiveScene3DEvent.
			OBJECT_RELEASE,event.displayObject3D.parentContainer));
}

private function roundRack1EventDispachDrag(event:InteractiveScene3DEvent):void
{
	if(isPressed)
	{
		trace("roundRack1 Drag" + event.target);
		event.displayObject3D.parentContainer.dispatchEvent(
			new InteractiveScene3DEvent(InteractiveScene3DEvent
				.OBJECT_MOVE,event.displayObject3D.parentContainer));
	}
}

// this is a function that is used to add an event to all its childres
private function addEventListeners(object:DisplayObject3D, eventType:String,
								   listener:Function):void
{
	object.addEventListener(eventType, listener);
	for each(var child:DisplayObject3D in object.children)
	{
		addEventListeners(child, eventType, listener);
	}
}

// this function will keep the toppest level parent's reference on all child objects
private function addParentContainer(object:DisplayObject3D,
									parent:DisplayObject3D):void
{
	//trace('Object:' + object.name + '< parent:' + parent.name);
	object.parentContainer = parent;
	for each(var child:DisplayObject3D in object.children)
	{
		addParentContainer(child, parent);
	}
}

// Event dispaches are used to transfer an event into another event to trigger manually
// here its used to trigger parent object trigger in case of clicking on a premitive 
//object(child object) of an object
private function dynamicRack1EventDispachPress(
	event:InteractiveScene3DEvent):void
{
	isPressed = true;
	trace("rack pressed" + event.target);
	//		dynamicRack1.dispatchEvent(
	//			new InteractiveScene3DEvent(InteractiveScene3DEvent
	//				.OBJECT_PRESS,dynamicRack1));
}

//EventDispatch-> event forwarding
//When any child object of a complex object will get an event(drag,click,button press,etc)
// it will be considered as an event which was happened to the top parent object/reference
//ex: if either a plate, rack bar, etc was pressed on a object-> it must consider to be as
//a click on the Rack object
private function dynamicRack1EventDispachDrag(
	event:InteractiveScene3DEvent):void
{
	if(isPressed)
	{
		trace("rack Drag" + event.target);
		event.displayObject3D.parentContainer.dispatchEvent(
			new InteractiveScene3DEvent(InteractiveScene3DEvent
				.OBJECT_MOVE,event.displayObject3D.parentContainer));
	}
}

private function dynamicRack1EventDispachRelease(
	event:InteractiveScene3DEvent):void
{// this function can't have other params
	trace("rack Released");
	event.displayObject3D.parentContainer.dispatchEvent(
		new InteractiveScene3DEvent(InteractiveScene3DEvent.
			OBJECT_RELEASE,event.displayObject3D.parentContainer));
}

public function handlePresss(event:InteractiveScene3DEvent):void
{
	trace("handlePress");
	isPressed  = true;//enable or dissable the object selection
	camera.mouseNavigation = false;//enable or dissable the camera up/down event
	currentPressedDisplayObject3D = event.displayObject3D;// get the mouse pressed object
	viewport.addEventListener(MouseEvent.MOUSE_WHEEL,rotateObject);
}

public function handleDrag(event:InteractiveScene3DEvent):void
{trace("handleDrag");
	if(isPressed)
	{
		//trace('sceneX:' + e.displayObject3D.sceneX + '-sceneZ:' + e.displayObject3D.sceneY+ '-sceneZ:' + e.displayObject3D.sceneZ );
		//trace("handleDrag");
		isDragging  = true;//enable or dissable the object selection
		camera.mouseNavigation = false;//enable or dissable the camera up/down event
		currentMovingDisplayObject3D = event.displayObject3D;// get the mouse pressed object
		viewport.addEventListener(MouseEvent.MOUSE_WHEEL,rotateObject);
	}
}

public function handleRelease(e:InteractiveScene3DEvent):void
{
	trace("handleRelease");
	isPressed  = false;
	isDragging  = false;//enable or dissable the object selection
	camera.mouseNavigation = true;//enable or dissable the camera up/down event
	// to avoid null object reference on mouse click on empty space
	currentMovingDisplayObject3D = new DisplayObject3D();
	viewport.removeEventListener(MouseEvent.MOUSE_WHEEL,rotateObject);
}

// capture the mouse scroll and transfer it to the selected object's retation on the floor surface
public function rotateObject(event:MouseEvent):void
{// by changeing the 'rate', you can change the minimum angle of the rotation
	trace("Mouse Scroll" + currentMovingDisplayObject3D.rotationY);
	var rate:int = 1;// a single scroll event will rotate the object (rate)' degrees
	if(isDragging && isPressed)
	{
		currentMovingDisplayObject3D.rotationY += event.delta*rate;
	}
}

//enabling both commented functions below will make the mouse movements more interactive
public function mouseOverObject(event:InteractiveScene3DEvent):void
{
	//trace('MouseOver: ' + event.displayObject3D.name);
	//Notification.show( event.displayObject3D.name, event.displayObject3D.name,2000,event.x,event.y);
	
	//blowObject(event.displayObject3D);
}

public function mouseOverAwayObject(event:InteractiveScene3DEvent):void
{
	//trace('MouseOverAway');
	//removeblowObject(event.displayObject3D);
}

public function mouseClickObject(event:InteractiveScene3DEvent):void
{
	currentSelectedDisplayObject3D = event.displayObject3D;
	if(currentSelectedDisplayObject3D != null)
	{
		trace('mouseClickObject');
		//materalChange = objectSelected?true:false;
		//objectSelected = materalChange?false:true;
		objectSelected = true;
		
		//if(materalChange)
		//{
		changeTileMaterial(currentSelectedDisplayObject3D);
		//	materalChange = false;
		//}
		//else
		//{
		//	Notification.show(currentSelectedDisplayObject3D.material.name, event.displayObject3D.name,2000,event.x,event.y);
		//	objectSelected = false;
		//	materalChange = true;
		//}
	}
}

public function changeTileMaterial(object:DisplayObject3D):void
{//tile material is changed only if the  shift key is pressed
	if (object != null && isshiftKeyPressed)
	{
		mouseMat = object.material.clone();
		object.material.copy(selectedMaterial);
		object.material.interactive = true;
	}
}

public function blowObject(object:DisplayObject3D):void
{
	trace('blowObject:>' + object.name);
	if (object != null)
	{
		var glow:GlowFilter = new GlowFilter(0x00FF33, 1, 20, 20, 4, 3);
		object.filters = [new BlurFilter(10, 10, 1)];
		new BlurFilter(10, 10, 1);
		mouseMat = object.material.clone();
		
		//if(materialSelected)
		//{
		object.material.copy(selectedMaterial);
		//materialSelected = false;
		//}else{
		//object.material = new BitmapFileMaterial("pictures/tiles/9.jpg");
		//}
		object.material.interactive = true;
		//object.filters = [new GlowFilter(0x00FF33, 1, 20, 20, 4, 3)];
		//viewport.getChildLayer(object, false, false).filters = object.filters;//[new GlowFilter(0x00FF33, 1, 20, 20, 4, 3)];
	}
}

public function removeblowObject(object:DisplayObject3D):void
{
	trace('removeblowObject');
	if (object != null)
	{
		object.material.copy(mouseMat);
		object.filters = null;
		//viewport.getChildLayer(object, false, false).filters = null;
	}
}
// load tray object [no need for the final production]
public function loadTray():void 
{
	tray = new Tray();
	
	//following event it to capture mouse press on any part of the object
	//the underline event will dipach another call as the parent object has been pressed instead of a particle
	//else only the child part of the object will be draged
	
	//to correctly trigger the events, all premitive childs of the object need to be added to the following trigger
	tray.plate.addEventListener(
		InteractiveScene3DEvent.OBJECT_PRESS, trayEventDispachPress);
	tray.plate.addEventListener(
		InteractiveScene3DEvent.OBJECT_RELEASE, trayEventDispachRelease);
	
	tray.corner.addEventListener(
		InteractiveScene3DEvent.OBJECT_PRESS, trayEventDispachPress);
	tray.corner.addEventListener(
		InteractiveScene3DEvent.OBJECT_RELEASE, trayEventDispachRelease);
	
	tray.connectorBar.addEventListener(
		InteractiveScene3DEvent.OBJECT_PRESS, trayEventDispachPress);
	tray.connectorBar.addEventListener(
		InteractiveScene3DEvent.OBJECT_RELEASE, trayEventDispachRelease);
	
	objectAllParentDispatchEvents(tray);
	
	scene.addChild(tray);
}

private function objectAllParentDispatchEvents(object:DisplayObject3D):void
{
	object.addEventListener(
		InteractiveScene3DEvent.OBJECT_OVER,mouseOverObject);
	object.addEventListener(
		InteractiveScene3DEvent.OBJECT_CLICK,mouseClickObject);
	object.addEventListener(
		InteractiveScene3DEvent.OBJECT_OUT,mouseOverAwayObject);
	object.addEventListener(
		InteractiveScene3DEvent.OBJECT_PRESS,handlePresss);
	object.addEventListener(
		InteractiveScene3DEvent.OBJECT_MOVE,handleDrag);
	object.addEventListener(
		InteractiveScene3DEvent.OBJECT_RELEASE,handleRelease);
}

//these functions will trigger the same fuction as any part of a object is triggered,
// its to redirect to the parend object
private function trayEventDispachPress(event:InteractiveScene3DEvent):void
{
	trace("tray pressed");
	tray.dispatchEvent(new InteractiveScene3DEvent(
		InteractiveScene3DEvent.OBJECT_PRESS,tray));
}

private function trayEventDispachRelease(event:InteractiveScene3DEvent):void
{
	trace("tray Released");
	tray.dispatchEvent(new InteractiveScene3DEvent(
		InteractiveScene3DEvent.OBJECT_RELEASE,tray));
}

//this will edit the Flash rightclick menu
private function contentMenuUpdate():void
{
	var menu:ContextMenu = new ContextMenu();
	menu.hideBuiltInItems();
	var menuitem:ContextMenuItem = new ContextMenuItem(
		"FortunaGlobal Development Team 2010",true,true,true);
	menuitem.addEventListener(
		ContextMenuEvent.MENU_ITEM_SELECT,fortunaGlobalweb);
	menu.customItems.push(menuitem);
	
	super.contextMenu = menu;
}

// load a rack to scene
private function loadRack1() : void
{
	var rack1DisplayObject3D :DisplayObject3D;
	var bed:Rack1 = new Rack1();
	rack1DisplayObject3D.addChild(bed);
	rack1DisplayObject3D.scale = 5;
	scene.addChild(rack1DisplayObject3D);
}

// load a rack to scene
private function loadRack2() : void 
{
	var rack2DisplayObject3D:DisplayObject3D;
	var rack2:Rack2 = new Rack2();
	rack2DisplayObject3D = scene.addChild(rack2);
	rack2DisplayObject3D.scale = 10;
	scene.addChild(rack2DisplayObject3D);
}

// load a model to scene
private function loadModel() : void 
{
	var sphereDisplayObject3D:DisplayObject3D = new DisplayObject3D();
	sphere = new Sphere(new BitmapFileMaterial("pictures/tiles/2.jpg"),100);
	sphereDisplayObject3D.addChild(sphere,'sphere');
	sphere.material.interactive = true;
	
	objectAllParentDispatchEvents(sphere);
	
	//sphere.addEventListener(
	scene.addChild(sphereDisplayObject3D);
	
	//plane = new Plane(new BitmapFileMaterial("pictures/tiles/2.jpg"),500,500);
	//plane.material.doubleSided = true;
	//scene.addChild(plane);
	
	//: front, back, right, left, top, bottom & all
	//trace("start loading cone");
	//var cone:Cone = new Cone(new BitmapFileMaterial("pictures/ourtex.jpg"), 20, 200);
	//trace("cone loaded");
	//cone.x=100;
	//cone.y=100;
	//scene.addChild(cone);
	
	//var light:PointLight3D = new PointLight3D( true,true );  
	//var material:FlatShadeMaterial = new FlatShadeMaterial(light, 0xeeeeee, 0x2d2d2d);
	//material.interactive = true;// configure the materials, so to get ready to catch user inputs
	//var sphere:Sphere = new Sphere(new BitmapFileMaterial("pictures/ourtex.jpg"));
	//scene.addChild(sphere);
}

private function imageClicked3D(event:InteractiveScene3DEvent):void
{
	trace("3dclicked");
}

private function loadRoom() : void 
{// load DAE room object from class
	var bitmapFileMaterial:BitmapFileMaterial = 
		new BitmapFileMaterial("pictures/ourtex.jpg");
	bitmapFileMaterial.doubleSided = true;
	
	var mytmpModel:Room = new Room();		 
	roomDisplayObject3D = scene.addChild(mytmpModel);
	roomDisplayObject3D.x = 0;
	roomDisplayObject3D.y = 0;
	roomDisplayObject3D.scale = 5;
	scene.addChild(roomDisplayObject3D);
}

private function imageClicked(event:Event,source:String):void
{
	//tray.plate.replaceMaterialByName(new BitmapFileMaterial(source),'all');
	//var material:BitmapFileMaterial = new BitmapFileMaterial(source);
	//selectedMaterial.copy(material);
	//selectedMaterial = material;
	selectedMaterial = new BitmapFileMaterial(source);
	selectedMaterial.materialFilePath = source;
	trace("Image Clicked");
	materialSelected = true;
}

private function newDynamicRack1(event:Event):void
{
	var dynamicRack1:DisplayObject3D = loadNewDynamicRack1(null);
	dynamicRack1NewList.addItem(dynamicRack1);
	scene.addChild(dynamicRack1);
	//reflector.addModel(loadRack);
}

private function newRolleRack1(event:Event):void
{
	var rolleRack1:DisplayObject3D = loadNewRolleRack1(null);
	rolleRack1NewList.addItem(rolleRack1);
	scene.addChild(rolleRack1);
	//reflector.addModel(loadRack);
}

private function newRoundRack1(event:Event):void
{
	var roundRack1:DisplayObject3D = loadNewRoundRack1(null);
	roundRack1NewList.addItem(roundRack1);
	scene.addChild(roundRack1);
	//reflector.addModel(loadRack);
}

public function drawGrid():void
{//draw grid lines for easy navigation on the virtual universe
	var s:Sprite = new Sprite();
	s.graphics.lineStyle(1, 0x909090, 1);
	s.graphics.moveTo(0,0);
	
	var xx:Number = 0;
	var yy:Number = 0;
	var lm:LineMaterial = new LineMaterial(0x909090);
	var lines:Lines3D = new Lines3D(lm);
	
	var dist:Number = 160;
	
	for(var i:int = 0;i<20;i++){
		var v1:Vertex3D = new Vertex3D(i*dist,0, 0);
		var v2:Vertex3D = new Vertex3D(i*dist,0,20*dist);
		var l:Line3D = new Line3D(lines, lm, 1, v1, v2);
		lines.addLine(l);
	}
	for( i = 0;i<20;i++){
		v1 = new Vertex3D(0,0, i*dist);
		v2 = new Vertex3D(20*dist,0,i*dist);
		l = new Line3D(lines, lm, 1, v1, v2);
		lines.addLine(l);
	}
	scene.addChild(lines);
	
	lines.x = -400;
	lines.z = -400;
}

private function onEnterFrame( event : Event ):void  
{
	var cameraPosition:Number3D = new Number3D(camera.x, camera.y, camera.z);
	// retriev the 2D projection of a 3D camer cordinates to catch the 2D point of the mouse in 3D space
	var ray:Number3D = camera.unproject(
		viewport.containerSprite.mouseX, viewport.containerSprite.mouseY);
	ray = Number3D.add(ray, cameraPosition);
	plane3D = new Plane3D();
	plane3D.setNormalAndPoint(new Number3D(0, 1, 0), new Number3D(0, 0, 0));
	var intersect:Number3D = plane3D.getIntersectionLineNumbers(
		cameraPosition, ray);
	
	if(isDragging && isPressed && isctrlKeyPressed)// if mouse is pressed AND control key is pressed start moving
	{//drag a object to the intersecting point(Finally pressed object)
		
		//trace('currentMovingDisplayObject3D.x:' + currentMovingDisplayObject3D.x);
		//trace('intersect.x:' + intersect.x);
		//trace('Difference.x:' + (currentMovingDisplayObject3D.x - intersect.x));
		
		currentMovingDisplayObject3D.x = intersect.x;
		currentMovingDisplayObject3D.y = intersect.y;
		currentMovingDisplayObject3D.z = intersect.z;
		//trace('sceneX:' + currentMovingDisplayObject3D.x + '-sceneY:' + currentMovingDisplayObject3D.y+ '-sceneZ:' + currentMovingDisplayObject3D.x );
		
		//trace(currentSelectedDisplayObject3D);
	}
	var rh:RenderHitData = viewport.hitTestPoint2D(
		new Point(viewport.containerSprite.mouseX,
			viewport.containerSprite.mouseY));
	
	//shadowCaster.invalidate();//Remove all OLD shadows
	//shadowCaster.castModel(dynamicHanger, light1, shadowPlane);//Draw new shadows
	//shadowCaster.castModel(dynamicRoom.getChildByName(''), light1, shadowPlane);
	
	//render the final view to the
	
	//reflector.render(camera,reflectorPlane);
	renderer.renderScene(scene,camera,viewport);
}

/*
on click get the point of the object and the mouse point ...
get the difference between the two points

var cameraPosition:Number3D = new Number3D(camera.x, camera.y, camera.z);
// retriev the 2D projection of a 3D camer cordinates to catch the 2D point of the mouse in 3D space
var ray:Number3D = camera.unproject(viewport.containerSprite.mouseX, viewport.containerSprite.mouseY);
ray = Number3D.add(ray, cameraPosition);
plane3D = new Plane3D();
plane3D.setNormalAndPoint(new Number3D(0, 1, 0), new Number3D(0, 0, 0));
var intersect:Number3D = plane3D.getIntersectionLineNumbers(cameraPosition, ray);
tmpx = intersect.x;
tmpy = intersect.y;
tmpz = intersect.z;

then calculate the difference between this value and the current render point

the problem here is that the differnce of this two points will be change when it move on the view point

*/

private function Camera3D():void
{
	camera.x=334;
	camera.y = 220;
	camera.z = 795;
	
	camera.target = null;
}

private function PlanCamera():void
{
	//camera.inertia = 3;
	camera.x = 995;//1040;
	camera.y = 7510;//7660;
	camera.z = 555;//910;
	camera.near = 60;
	
	while(camera.rotationX != 270)
	{
		camera.rotationX =  Math.round(270 * 10) / 10;
	}
	while(camera.rotationY != 0)
	{
		camera.rotationY =  Math.round(0 * 10) / 10;
	}
	while(camera.rotationZ != 180)
	{
		camera.rotationZ =  Math.round(180 * 10) / 10;
	}
	
	camera.lookAt(dynamicRoom);
	camera.target = dynamicRoom.floor;
}

private function loadRackValuesDynamicRack1(dynamicRack1:DynamicRack1):DynamicRack1java
{
	var existingDynamicRack1java:DynamicRack1java = new DynamicRack1java();
	
	dynamicRack1.javaObject.rotationX = dynamicRack1.rotationX;
	dynamicRack1.javaObject.rotationY = dynamicRack1.rotationY;
	dynamicRack1.javaObject.rotationZ = dynamicRack1.rotationZ;
	dynamicRack1.javaObject.scale = dynamicRack1.scale*10;
	dynamicRack1.javaObject.x = dynamicRack1.x;
	dynamicRack1.javaObject.y = dynamicRack1.y;
	dynamicRack1.javaObject.z = dynamicRack1.z;
	dynamicRack1.javaObject.name = dynamicRack1.name;
	dynamicRack1.javaObject.status = dynamicRack1.javaObject.status;
	dynamicRack1.javaObject.object3DId=dynamicRack1.javaObject.object3DId;
	dynamicRack1.javaObject.object3DType=dynamicRack1.javaObject.object3DType;
	
	existingDynamicRack1java.rotationX = dynamicRack1.javaObject.rotationX;
	existingDynamicRack1java.rotationY = dynamicRack1.javaObject.rotationY;
	existingDynamicRack1java.rotationZ = dynamicRack1.javaObject.rotationZ;
	existingDynamicRack1java.scale = dynamicRack1.javaObject.scale;
	existingDynamicRack1java.x = dynamicRack1.javaObject.x;
	existingDynamicRack1java.y = dynamicRack1.javaObject.y;
	existingDynamicRack1java.z = dynamicRack1.javaObject.z;
	existingDynamicRack1java.name = dynamicRack1.javaObject.name;
	existingDynamicRack1java.object3DId = dynamicRack1.javaObject.object3DId;
	existingDynamicRack1java.status = dynamicRack1.javaObject.status;
	existingDynamicRack1java.object3DType=dynamicRack1.javaObject.object3DType;
	
	return existingDynamicRack1java;
}


private function loadRackValuesRolleRack1(rolleRack1:RolleRack1):RolleRack1java
{
	var existingRolleRack1java:RolleRack1java = new RolleRack1java();
	
	rolleRack1.javaObject.rotationX = rolleRack1.rotationX;
	rolleRack1.javaObject.rotationY = rolleRack1.rotationY;
	rolleRack1.javaObject.rotationZ = rolleRack1.rotationZ;
	rolleRack1.javaObject.scale = rolleRack1.scale*10;
	rolleRack1.javaObject.x = rolleRack1.x;
	rolleRack1.javaObject.y = rolleRack1.y;
	rolleRack1.javaObject.z = rolleRack1.z;
	rolleRack1.javaObject.name = rolleRack1.name;
	rolleRack1.javaObject.status = rolleRack1.javaObject.status;
	rolleRack1.javaObject.object3DId=rolleRack1.javaObject.object3DId;
	rolleRack1.javaObject.object3DType=rolleRack1.javaObject.object3DType;
	
	existingRolleRack1java.rotationX = rolleRack1.javaObject.rotationX;
	existingRolleRack1java.rotationY = rolleRack1.javaObject.rotationY;
	existingRolleRack1java.rotationZ = rolleRack1.javaObject.rotationZ;
	existingRolleRack1java.scale = rolleRack1.javaObject.scale;
	existingRolleRack1java.x = rolleRack1.javaObject.x;
	existingRolleRack1java.y = rolleRack1.javaObject.y;
	existingRolleRack1java.z = rolleRack1.javaObject.z;
	existingRolleRack1java.name = rolleRack1.javaObject.name;
	existingRolleRack1java.object3DId = rolleRack1.javaObject.object3DId;
	existingRolleRack1java.status = rolleRack1.javaObject.status;
	existingRolleRack1java.object3DType=rolleRack1.javaObject.object3DType;
	
	return existingRolleRack1java;
}

private function loadRackValuesRoundRack1(roundRack1:RoundRack1):RoundRack1java
{
	var existingRoundRack1java:RoundRack1java = new RoundRack1java();
	
	roundRack1.javaObject.rotationX = roundRack1.rotationX;
	roundRack1.javaObject.rotationY = roundRack1.rotationY;
	roundRack1.javaObject.rotationZ = roundRack1.rotationZ;
	roundRack1.javaObject.scale = roundRack1.scale*10;
	roundRack1.javaObject.x = roundRack1.x;
	roundRack1.javaObject.y = roundRack1.y;
	roundRack1.javaObject.z = roundRack1.z;
	roundRack1.javaObject.name = roundRack1.name;	
	
	existingRoundRack1java.rotationX = roundRack1.javaObject.rotationX;
	existingRoundRack1java.rotationY = roundRack1.javaObject.rotationY;
	existingRoundRack1java.rotationZ = roundRack1.javaObject.rotationZ;
	existingRoundRack1java.scale = roundRack1.javaObject.scale;
	existingRoundRack1java.x = roundRack1.javaObject.x;
	existingRoundRack1java.y = roundRack1.javaObject.y;
	existingRoundRack1java.z = roundRack1.javaObject.z;
	existingRoundRack1java.name = roundRack1.javaObject.name;
	existingRoundRack1java.object3DId = roundRack1.javaObject.object3DId;
	existingRoundRack1java.status = roundRack1.javaObject.status;
	existingRoundRack1java.object3DType=roundRack1.javaObject.object3DType;
	existingRoundRack1java.materialId = roundRack1.javaObject.roundRack1javaMaterial.roundRack1javaMaterialId;
	roundRack1.javaObject.materialId = roundRack1.javaObject.roundRack1javaMaterial.roundRack1javaMaterialId;
	
	var roundRack1javaMaterial:RoundRack1javaMaterial = new RoundRack1javaMaterial();
	roundRack1javaMaterial.roundTray11plateMaterialUrl = (RoundTray1)(roundRack1.trays[1]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray12plateMaterialUrl = (RoundTray1)(roundRack1.trays[2]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray13plateMaterialUrl = (RoundTray1)(roundRack1.trays[3]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray14plateMaterialUrl = (RoundTray1)(roundRack1.trays[4]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray15plateMaterialUrl = (RoundTray1)(roundRack1.trays[5]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray16plateMaterialUrl = (RoundTray1)(roundRack1.trays[6]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray17plateMaterialUrl = (RoundTray1)(roundRack1.trays[7]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray18plateMaterialUrl = (RoundTray1)(roundRack1.trays[8]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray19plateMaterialUrl = (RoundTray1)(roundRack1.trays[9]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray110plateMaterialUrl = (RoundTray1)(roundRack1.trays[10]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray111plateMaterialUrl = (RoundTray1)(roundRack1.trays[11]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray112plateMaterialUrl = (RoundTray1)(roundRack1.trays[12]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray113plateMaterialUrl = (RoundTray1)(roundRack1.trays[13]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray114plateMaterialUrl = (RoundTray1)(roundRack1.trays[14]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray115plateMaterialUrl = (RoundTray1)(roundRack1.trays[15]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray116plateMaterialUrl = (RoundTray1)(roundRack1.trays[16]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray117plateMaterialUrl = (RoundTray1)(roundRack1.trays[17]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray118plateMaterialUrl = (RoundTray1)(roundRack1.trays[18]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray119plateMaterialUrl = (RoundTray1)(roundRack1.trays[19]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray120plateMaterialUrl = (RoundTray1)(roundRack1.trays[20]).plate.material.materialFilePath;
	roundRack1javaMaterial.roundTray121plateMaterialUrl = (RoundTray1)(roundRack1.trays[21]).plate.material.materialFilePath;
	
	roundRack1javaMaterial.cylinderBitmapFileMaterialUrl = roundRack1.javaObject.roundRack1javaMaterial.cylinderBitmapFileMaterialUrl;
	roundRack1javaMaterial.trayplateMaterialUrl = roundRack1.javaObject.roundRack1javaMaterial.trayplateMaterialUrl;
	roundRack1javaMaterial.cubesMaterialListUrl = roundRack1.javaObject.roundRack1javaMaterial.cubesMaterialListUrl;
	
	roundRack1javaMaterial.roundRack1javaMaterialId = roundRack1.javaObject.materialId;
	existingRoundRack1java.roundRack1javaMaterial = roundRack1javaMaterial;
	return existingRoundRack1java;
}

private function saveLoadedModels():void
{
	var complexRIA:ComplexRIA = new ComplexRIA();
	complexRIADTO = new ComplexRIADTO();
	
	complexRIA.listDeletedDynamicRack1java = new ArrayCollection();
	complexRIA.listDeletedRolleRack1java = new ArrayCollection();
	complexRIA.listDeletedRoundRack1java = new ArrayCollection();
	
	complexRIA.listExistingDynamicRack1java = new ArrayCollection();
	complexRIA.listExistingRolleRack1java = new ArrayCollection();
	complexRIA.listExistingRoundRack1java = new ArrayCollection();
	
	complexRIA.listNewDynamicRack1java = new ArrayCollection();
	complexRIA.listNewRolleRack1java = new ArrayCollection();
	complexRIA.listNewRoundRack1java = new ArrayCollection();
	
	for each(var existingRoundRack1:RoundRack1 in roundRack1ExistingList)
	{
		complexRIA.listExistingRoundRack1java
			.addItem(loadRackValuesRoundRack1(existingRoundRack1));
	}
	
	for each(var newRoundRack1:RoundRack1 in roundRack1NewList)
	{
		complexRIA.listNewRoundRack1java.addItem(loadRackValuesRoundRack1(newRoundRack1));
		roundRack1ExistingList.addItem(newRoundRack1);
	}
	roundRack1NewList = new ArrayCollection();
	
	for each(var existingRolleRack1:RolleRack1 in rolleRack1ExistingList)
	{
		complexRIA.listExistingRolleRack1java
			.addItem(loadRackValuesRolleRack1(existingRolleRack1));
	}
	
	for each(var newRolleRack1:RolleRack1 in rolleRack1NewList)
	{
		complexRIA.listNewRolleRack1java.addItem(loadRackValuesRolleRack1(newRolleRack1));
		rolleRack1ExistingList.addItem(newRolleRack1);
	}
	rolleRack1NewList = new ArrayCollection();
	
	for each(var existingDynamicRack1:DynamicRack1 in dynamicRack1ExistingList)
	{
		complexRIA.listExistingDynamicRack1java
			.addItem(loadRackValuesDynamicRack1(existingDynamicRack1));
	}
	
	for each(var newDynamicRack1:DynamicRack1 in dynamicRack1NewList)
	{
		complexRIA.listNewDynamicRack1java.addItem(loadRackValuesDynamicRack1(newDynamicRack1));
		dynamicRack1ExistingList.addItem(newDynamicRack1);
	}
	dynamicRack1NewList = new ArrayCollection();
	
	sendToServer(complexRIA);
	//reLoad();
}

private function notifyUserOnDataArrivalsendToServerResult(event:ResultEvent):void
{
	var complexRIA:ComplexRIA = (ComplexRIA)(event.result);
	var str:String = complexRIA.uSerMessage;
	result_text.text = str;
	
	//loadModelsFromServerData(complexRIA);
	if(str=="Reload")
	{
		reLoad();
	}
	else
	{
		result_text.text=complexRIA.listExistingRoundRack1java.length.toString();
	}
}

private function objectToRoundRack1java(object:Object):RoundRack1java
{
	var roundRack1java:RoundRack1java = new RoundRack1java();
	roundRack1java.name = object["name"].toString();
	roundRack1java.object3DId = int(object["object3DId"].toString());
	roundRack1java.object3DType = int(object["object3DType"].toString());
	roundRack1java.roundRack1java = object["roundRack1java"].toString();
	roundRack1java.rotationX = int(object["rotationX"].toString());
	roundRack1java.rotationY = int(object["rotationY"].toString());
	roundRack1java.rotationZ = int(object["rotationZ"].toString());
	roundRack1java.scale = int(object["scale"].toString());
	roundRack1java.status = int(object["status"].toString());
	roundRack1java.x = int(object["x"].toString());
	roundRack1java.y = int(object["y"].toString());
	roundRack1java.z = int(object["z"].toString());
	roundRack1java.roundRack1javaMaterial = objectToRoundRack1javaMaterial(object["roundRack1javaMaterial"]);
	
	return roundRack1java;
}

private function objectToRoundRack1javaMaterial(object:Object):RoundRack1javaMaterial
{
	var roundRack1javaMaterial:RoundRack1javaMaterial = new RoundRack1javaMaterial();
	
	roundRack1javaMaterial.cubesMaterialListUrl = object["cubesMaterialListUrl"].toString();	
	roundRack1javaMaterial.trayplateMaterialUrl = object["trayplateMaterialUrl"].toString();
	roundRack1javaMaterial.cylinderBitmapFileMaterialUrl = object["cylinderBitmapFileMaterialUrl"].toString();
	roundRack1javaMaterial.roundRack1javaMaterialId = int(object["roundRack1javaMaterialId"].toString());
	roundRack1javaMaterial.roundTray11plateMaterialUrl = object["roundTray11plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray12plateMaterialUrl = object["roundTray12plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray13plateMaterialUrl = object["roundTray13plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray14plateMaterialUrl = object["roundTray14plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray15plateMaterialUrl = object["roundTray15plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray16plateMaterialUrl = object["roundTray16plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray17plateMaterialUrl = object["roundTray17plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray18plateMaterialUrl = object["roundTray18plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray19plateMaterialUrl = object["roundTray19plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray110plateMaterialUrl = object["roundTray110plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray111plateMaterialUrl = object["roundTray111plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray112plateMaterialUrl = object["roundTray112plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray113plateMaterialUrl = object["roundTray113plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray114plateMaterialUrl = object["roundTray114plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray115plateMaterialUrl = object["roundTray115plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray116plateMaterialUrl = object["roundTray116plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray117plateMaterialUrl = object["roundTray117plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray118plateMaterialUrl = object["roundTray118plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray119plateMaterialUrl = object["roundTray119plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray120plateMaterialUrl = object["roundTray120plateMaterialUrl"].toString();
	roundRack1javaMaterial.roundTray121plateMaterialUrl = object["roundTray121plateMaterialUrl"].toString();
	
	return roundRack1javaMaterial;
}

private function objectToDynamicRack1java(object:Object):DynamicRack1java
{
	var dynamicRack1java:DynamicRack1java = new DynamicRack1java();
	dynamicRack1java.name = object["name"].toString();
	dynamicRack1java.object3DId = int(object["object3DId"].toString());
	dynamicRack1java.object3DType = int(object["object3DType"].toString());
	dynamicRack1java.dynamicRack1java = object["dynamicRack1java"].toString();
	dynamicRack1java.rotationX = int(object["rotationX"].toString());
	dynamicRack1java.rotationY = int(object["rotationY"].toString());
	dynamicRack1java.rotationZ = int(object["rotationZ"].toString());
	dynamicRack1java.scale = int(object["scale"].toString());
	dynamicRack1java.status = int(object["status"].toString());
	dynamicRack1java.x = int(object["x"].toString());
	dynamicRack1java.y = int(object["y"].toString());
	dynamicRack1java.z = int(object["z"].toString());
	
	return dynamicRack1java;
}

private function objectToRolleRack1java(object:Object):RolleRack1java
{
	var rolleRack1java:RolleRack1java = new RolleRack1java();
	rolleRack1java.name = object["name"].toString();
	rolleRack1java.object3DId = int(object["object3DId"].toString());
	rolleRack1java.object3DType = int(object["object3DType"].toString());
	rolleRack1java.rolleRack1java = object["rolleRack1java"].toString();
	rolleRack1java.rotationX = int(object["rotationX"].toString());
	rolleRack1java.rotationY = int(object["rotationY"].toString());
	rolleRack1java.rotationZ = int(object["rotationZ"].toString());
	rolleRack1java.scale = int(object["scale"].toString());
	rolleRack1java.status = int(object["status"].toString());
	rolleRack1java.x = int(object["x"].toString());
	rolleRack1java.y = int(object["y"].toString());
	rolleRack1java.z = int(object["z"].toString());

	return rolleRack1java;
}

private function notifyUserOnDataArrivalsendToClientResult(event:ResultEvent):void
{
	var i:int = 0;
	var complexRIA:ComplexRIA = event.result as ComplexRIA;
	for each (var objectRoundRack1java:Object in complexRIA.listExistingRoundRack1java)
	{
		var roundRack1:RoundRack1 = (RoundRack1)(loadNewRoundRack1(objectToRoundRack1java(objectRoundRack1java)));
		roundRack1ExistingList.addItem(roundRack1);
		scene.addChild(roundRack1);
	}
	for each (var objectDynamicRack1java:Object in complexRIA.listExistingDynamicRack1java)
	{
		var dynamicRack1:DynamicRack1 = (DynamicRack1)(loadNewDynamicRack1(objectToDynamicRack1java(objectDynamicRack1java)));
		dynamicRack1ExistingList.addItem(dynamicRack1);
		scene.addChild(dynamicRack1);
	}
	for each (var objectRolleRack1java:Object in complexRIA.listExistingRolleRack1java)
	{
		var rolleRack1:RolleRack1 = (RolleRack1)(loadNewRolleRack1(objectToRolleRack1java(objectRolleRack1java)));
		rolleRack1ExistingList.addItem(rolleRack1);
		scene.addChild(rolleRack1);
	}

	result_text.text = complexRIA.listExistingRoundRack1java.length 
		+ complexRIA.listExistingDynamicRack1java.length 
		+  complexRIA.listExistingRolleRack1java.length 
		+ " Objects Loaded";
}

private function reLoad():void
{
	var urlRequest:URLRequest = new URLRequest(FlexGlobals.topLevelApplication.url);
	navigateToURL(urlRequest,"_self");
}