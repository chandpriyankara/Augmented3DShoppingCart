package com.fortunaglobal.model;

public class JavaObject3D {
	// this object is parallel to
	// the DisplayObject3D
	// object on papervision API
	// This contains the root attributes of a 3D object and all its required
	// reference roots

	private int object3DId;// identifies the individual object
	private int object3DType;// identifies the object as the root parend 3D
	private int materialId;
	private int showroom;
	// object type
	private int x;
	private int y;
	private int z;
	private int rotationX;
	private int rotationY;
	private int rotationZ;
	private int scale;// object scale to the canvas
	private String name;// dynamic name of the object will be a randomly created
	// UID comes from client end
	private int status;// status of the object

	// [active=1,deleted=0,hidden=2,new=3,changed=4]

	public void setObject3DId(int object3DId) {
		this.object3DId = object3DId;
	}

	public int getObject3DId() {
		return object3DId;
	}

	public void setObject3DType(int object3DType) {
		this.object3DType = object3DType;
	}

	public int getObject3DType() {
		return object3DType;
	}

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public int getZ() {
		return z;
	}

	public void setZ(int z) {
		this.z = z;
	}

	public int getRotationX() {
		return rotationX;
	}

	public void setRotationX(int rotationX) {
		this.rotationX = rotationX;
	}

	public int getRotationY() {
		return rotationY;
	}

	public void setRotationY(int rotationY) {
		this.rotationY = rotationY;
	}

	public int getRotationZ() {
		return rotationZ;
	}

	public void setRotationZ(int rotationZ) {
		this.rotationZ = rotationZ;
	}

	public int getScale() {
		return scale;
	}

	public void setScale(int scale) {
		this.scale = scale;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public void setShowroom(int showroom) {
		this.showroom = showroom;
	}

	public int getShowroom() {
		return showroom;
	}

	public void setMaterialId(int materialId) {
		this.materialId = materialId;
	}

	public int getMaterialId() {
		return materialId;
	}
}
