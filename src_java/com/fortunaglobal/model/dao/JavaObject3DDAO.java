package com.fortunaglobal.model.dao;

import java.util.ArrayList;

import com.fortunaglobal.model.JavaObject3D;

public interface JavaObject3DDAO {
	JavaObject3D addJavaObject3D(JavaObject3D javaObject3D);

	void editJavaObject3D(JavaObject3D javaObject3D);

	void deleteJavaObject3D(JavaObject3D javaObject3D);

	int lastJavaObject3D();

	JavaObject3D getJavaObject3D(int object3DId);

	ArrayList<JavaObject3D> listJavaObject3D(int objectType);
}
