package com.fortunaglobal.model
{
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;
	
	import org.papervision3d.core.geom.TriangleMesh3D;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.math.Plane3D;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.materials.MovieMaterial;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.primitives.Plane;
	
	public class PlaneReflection
	{
		private var vertexRefs:Dictionary;
		private var numberRefs:Dictionary;
		private var p3d:Plane3D = new Plane3D();
		public var color:uint = 0;
		public var alpha:Number = 0;
		public var blend:String = "";
		public var filters:Array;
		public var uid:String;
		
		private var _type:String = "point";
		private var dir:Number3D = new Number3D();
		private var planeBounds:Dictionary;
		private var targetBounds:Dictionary;
		private var models:Dictionary;
		private var modelList:Array;
		private var triangles:Dictionary = new Dictionary(true);
		private var numbers:Dictionary = new Dictionary(true);
		private var triangleRefs:Dictionary = new Dictionary(true);
			
		public static var DIRECTIONAL:String = "dir";
		public static var SPOTLIGHT:String = "spot";
		private var tris:Array;
		private var r:RenderSessionData = new RenderSessionData();
		
		public var reflectionMatrix:Matrix3D = new Matrix3D();
	
	
		public function PlaneReflection(uid:String, blend:String = "multiply", alpha:Number = 1, filters:Array=null)
		{
			this.uid = uid;
			this.color = 0;
			this.alpha = alpha;
			this.blend = blend;	
			this.filters = filters ? filters : [];
			numberRefs = new Dictionary(true);
			targetBounds = new Dictionary(true);
			planeBounds = new Dictionary(true);
			models = new Dictionary(true);
			
			modelList = new Array();
			tris = new Array();
		}
		
		public function addModel(model:DisplayObject3D):void{
			modelList.push(model);
		}
		
		public function removeModel(model:DisplayObject3D):void{
			modelList.splice(modelList.indexOf(model), 1);
		}
		
		public function render(camera:CameraObject3D, plane:Plane):void{
			
			tris = new Array();
			var reset:Boolean = true;
			
			var castClip:Sprite = getCastClip(plane);	
				castClip.blendMode = this.blend;
				castClip.filters = this.filters;
				castClip.alpha = this.alpha;
				
			castClip.graphics.clear();
			
			for each(var do3d:DisplayObject3D in modelList){
				castModel(do3d, camera, plane);
				reset = false;
			}
			
			tris.sortOn("screenZ", Array.NUMERIC | Array.DESCENDING);

			for(var i:int=0;i<tris.length;i++){
				var tmp:Triangle3D = tris[i];
				//tmp.material.drawTriangle(tmp, castClip.graphics, r);
			}
			
			
		}

		public function castModel(model:DisplayObject3D, light:CameraObject3D, plane:Plane):void{
			
			var ar:Array;
			if(models[model])
			{
				ar = models[model];
			}else{
				ar = new Array();
				getChildMesh(model, ar);
				models[model] = ar;
			}
			
			
			for each(var t:TriangleMesh3D in ar){
			
				castFaces(light, t, plane);

			}
		
		}
		
		public function createReflectionMatrix(plane:Plane3D):void{
			var a:Number = plane.normal.x;
			var b:Number = plane.normal.y;
			var c:Number = plane.normal.z;
			
			reflectionMatrix.n11 = 1-(2*a*a);
			reflectionMatrix.n12 = 0-(2*a*b);
			reflectionMatrix.n13 = 0-(2*a*c);
			
			reflectionMatrix.n21 = 0-(2*a*b);
			reflectionMatrix.n22 = 1-(2*b*b);
			reflectionMatrix.n23 = 0-(2*b*c);
			
			reflectionMatrix.n31 = 0-(2*a*c);
			reflectionMatrix.n32 = 0-(2*b*c);
			reflectionMatrix.n33 = 1-(2*c*c);
		}
		
		private function getChildMesh(do3d:DisplayObject3D, ar:Array):void{
			if(do3d is TriangleMesh3D)
				ar.push(do3d);
				
			for each(var d:DisplayObject3D in do3d.children)
				getChildMesh(d, ar);
		}

		public function setType(type:String="point"):void{
			_type = type;
		}
		public function getType():String{
			return _type;
		}
		
		
		public function getCastClip(plane:Plane):Sprite{
			
			var planeMovie:Sprite = Sprite(MovieMaterial(plane.material).movie);
			var castClip:Sprite;
			if(planeMovie.getChildByName("castClip"+uid))
				return Sprite(planeMovie.getChildByName("castClip"+uid));
			else{
				
				var movieSize:Point = new Point(planeMovie.width, planeMovie.height);
				
				castClip = new Sprite();
				castClip.name = "castClip"+uid;
				castClip.scrollRect = new Rectangle(0, 0, movieSize.x, movieSize.y);
				planeMovie.addChild(castClip);
				return castClip;
			}
		}
		
		public function castFaces(light:CameraObject3D, target:TriangleMesh3D, plane:Plane):void{
			
			var planeVertices:Array = plane.geometry.vertices;
			
			//convert to target space?
			var world:Matrix3D = plane.world;
			var inv:Matrix3D = Matrix3D.inverse(plane.transform);
			
			var lp:Number3D = new Number3D(light.x, light.y, light.z);
			Matrix3D.multiplyVector(inv, lp);
			
			var forward:Number3D = new Number3D(light.transform.n13, light.transform.n23, light.transform.n33);
			Matrix3D.multiplyVector(inv, forward);
			
			p3d.setThreePoints(planeVertices[0].getPosition(), planeVertices[1].getPosition(), planeVertices[2].getPosition());
			
			createReflectionMatrix(p3d);
			
			var pos:Number3D = new Number3D();

			dir.x = -p3d.normal.x;
			dir.y = -p3d.normal.y;
			dir.z = -p3d.normal.z;

			var bounds:Object = planeBounds[plane];
			if(!bounds){
				bounds = plane.boundingBox();
				planeBounds[plane] = bounds;
			}
			
			
			var planeMovie:Sprite = Sprite(MovieMaterial(plane.material).movie);
			var movieSize:Point = new Point(planeMovie.width, planeMovie.height);
			
			
			var matrix:Matrix3D = Matrix3D.multiply(inv, target.world);
				matrix = Matrix3D.multiply(reflectionMatrix, matrix);
			
			/* var refForward:Number3D = forward.clone();
			Matrix3D.multiplyVector3x3(matrix, refForward); */
						
			vertexRefs = new Dictionary(true);
			//numberRefs = new Dictionary(true);
								
			
			var fNormal:Number3D = new Number3D();
			
				for each(var t:Triangle3D in target.geometry.faces){
					
					
					//don't cull if material is double sided
					if(t.material.doubleSided == false){
						//culling
						fNormal.copyFrom(t.faceNormal);
						Matrix3D.multiplyVector3x3(matrix, fNormal);
						
						//flip culling if its a plane...
						if(target is Plane){
							if(Number3D.dot(fNormal, lp) < 0){
								continue;
							}   
						}else{
										
							if(Number3D.dot(fNormal, lp) > 0){
								continue;
							}   
						}
					}
					 
					if(!numbers[t.v0])
						numbers[t.v0] = new Number3D();
						
					if(!numbers[t.v1])
						numbers[t.v1] = new Number3D();
						
					if(!numbers[t.v2])
						numbers[t.v2] = new Number3D();
					
					
					var v0:Number3D = numbers[t.v0];
					var v1:Number3D = numbers[t.v1];
					var v2:Number3D = numbers[t.v2];
					var sz:Number = 0;
					
					pos = projectVertex(t.v0, lp, matrix);
					get2dPoint(pos, bounds.min, bounds.size, movieSize, v0);
					sz = pos.z;
					
					pos = projectVertex(t.v1, lp, matrix);
					get2dPoint(pos, bounds.min, bounds.size, movieSize, v1);
					sz += pos.z;
					
					pos = projectVertex(t.v2, lp, matrix);
					get2dPoint(pos, bounds.min, bounds.size, movieSize, v2);
					sz += pos.z;

					var tt:Triangle3D = triangleRefs[t];
					
					if(!tt){
						
						tt = new Triangle3D(null, [new Vertex3D(), new Vertex3D(), new Vertex3D()], t.material, t.uv);
						triangleRefs[t] = tt;
						
					}
					
					copyVertexInstance(tt.v0.vertex3DInstance,v0);
					copyVertexInstance(tt.v1.vertex3DInstance,v1);
					copyVertexInstance(tt.v2.vertex3DInstance,v2);

					tt.screenZ = sz/3;
					tris.push(tt);
	
				}
			
				
		}
		
		private function copyVertexInstance(vi:Vertex3DInstance, n:Number3D):void{
			vi.x = n.x;
			vi.y = n.y;
		}
		
		
		public function invalidate():void{
			invalidateModels();
			invalidatePlanes();
		}
		
		public function invalidatePlanes():void{
			planeBounds = new Dictionary(true);
		}
		public function invalidateTargets():void{
			numberRefs = new Dictionary(true);
			targetBounds = new Dictionary(true);
			triangles = new Dictionary(true);
		}
		
		public function invalidateModels():void{
			models = new Dictionary(true);
			invalidateTargets();
		}
		
		private function get2dPoint(pos3D:Number3D, min3D:Number3D, size3D:Number3D, movieSize:Point, v:Number3D):void{
			v.x = (pos3D.x-min3D.x)/size3D.x*movieSize.x;
			v.y = (-pos3D.y-min3D.y)/size3D.y*movieSize.y;
		}
		
		private function projectVertex(v:Vertex3D, camera:Number3D, matrix:Matrix3D):Number3D{

			var pos:Number3D = vertexRefs[v];
			if(pos)
				return pos;
			
			var n:Number3D = numberRefs[v];
			
			if(!n){
				
				n = new Number3D(v.x, v.y, v.z);
				Matrix3D.multiplyVector(matrix, n);
				numberRefs[v] = n;

			}
			
			pos = p3d.getIntersectionLineNumbers(camera, n);
			pos.z = -Number3D.dot(camera, n);	//distance
			vertexRefs[v] = pos;
			return pos;
		}

	}
}
	