package com.fortunaglobal.model.dto;

import java.util.ArrayList;

import com.fortunaglobal.model.DynamicRack1java;
import com.fortunaglobal.model.JavaObject3D;
import com.fortunaglobal.model.dao.JavaObject3DDAO;
import com.fortunaglobal.model.dao.impl.mysql.JavaObject3DDAOImpl;
import com.fortunaglobal.model.settings.Tbl_rocel3dRackType;

public class DynamicRack1javaDTO {
	public DynamicRack1java addDynamicRack1java(DynamicRack1java roundRack1java) {
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		JavaObject3D javaObject3D = new JavaObject3D();

		javaObject3D.setX(roundRack1java.getX());
		javaObject3D.setY(roundRack1java.getY());
		javaObject3D.setZ(roundRack1java.getZ());
		javaObject3D.setRotationX(roundRack1java.getRotationX());
		javaObject3D.setRotationY(roundRack1java.getRotationY());
		javaObject3D.setRotationZ(roundRack1java.getRotationZ());
		javaObject3D.setName(roundRack1java.getName());
		javaObject3D.setObject3DType(roundRack1java.getObject3DType());
		javaObject3D.setScale(roundRack1java.getScale());
		javaObject3D.setStatus(roundRack1java.getStatus());
		javaObject3D.setShowroom(roundRack1java.getShowroom());

		javaObject3D = javaObject3DDTO.addJavaObject3D(javaObject3D);

		roundRack1java.setObject3DId(javaObject3D.getObject3DId());

		return roundRack1java;
	}

	public void editDynamicRack1java(DynamicRack1java roundRack1java) {
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		JavaObject3D javaObject3D = new JavaObject3D();

		javaObject3D.setX(roundRack1java.getX());
		javaObject3D.setY(roundRack1java.getY());
		javaObject3D.setZ(roundRack1java.getZ());
		javaObject3D.setRotationX(roundRack1java.getRotationX());
		javaObject3D.setRotationY(roundRack1java.getRotationY());
		javaObject3D.setRotationZ(roundRack1java.getRotationZ());
		javaObject3D.setName(roundRack1java.getName());
		javaObject3D.setObject3DId(roundRack1java.getObject3DId());
		javaObject3D.setObject3DType(roundRack1java.getObject3DType());
		javaObject3D.setScale(roundRack1java.getScale());
		javaObject3D.setStatus(roundRack1java.getStatus());
		javaObject3D.setShowroom(roundRack1java.getShowroom());

		// javaObject3D =
		javaObject3DDTO.editJavaObject3D(javaObject3D);

		// return roundRack1java;
	}

	public ArrayList<DynamicRack1java> listDynamicRack1java(int currentShowRoom) {
		ArrayList<DynamicRack1java> listDynamicRack1java = new ArrayList<DynamicRack1java>();

		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		ArrayList<JavaObject3D> listJavaObject3D = new ArrayList<JavaObject3D>();
		DynamicRack1java roundRack1java;
		listJavaObject3D = javaObject3DDTO.listJavaObject3D(Integer
				.parseInt(Tbl_rocel3dRackType.dynamicRack1java));

		for (JavaObject3D javaObject3D : listJavaObject3D) {
			roundRack1java = new DynamicRack1java();

			roundRack1java.setName(javaObject3D.getName());
			roundRack1java.setObject3DId(javaObject3D.getObject3DId());
			roundRack1java.setObject3DType(javaObject3D.getObject3DType());
			roundRack1java.setRotationX(javaObject3D.getRotationX());
			roundRack1java.setRotationY(javaObject3D.getRotationY());
			roundRack1java.setRotationZ(javaObject3D.getRotationZ());
			roundRack1java.setScale(javaObject3D.getScale());
			roundRack1java.setStatus(javaObject3D.getStatus());
			roundRack1java.setX(javaObject3D.getX());
			roundRack1java.setY(javaObject3D.getY());
			roundRack1java.setZ(javaObject3D.getZ());
			roundRack1java.setShowroom(javaObject3D.getShowroom());

			if (currentShowRoom == roundRack1java.getShowroom()) {
				listDynamicRack1java.add(roundRack1java);
			}
		}
		return listDynamicRack1java;
	}
}