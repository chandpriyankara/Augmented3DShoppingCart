package com.fortunaglobal.model.dto;

import java.util.ArrayList;

import com.fortunaglobal.model.JavaObject3D;
import com.fortunaglobal.model.RolleRack1java;
import com.fortunaglobal.model.RolleRack1javaMaterial;
import com.fortunaglobal.model.dao.JavaObject3DDAO;
import com.fortunaglobal.model.dao.RolleRack1javaMaterialDAO;
import com.fortunaglobal.model.dao.impl.mysql.JavaObject3DDAOImpl;
import com.fortunaglobal.model.dao.impl.mysql.RolleRack1javaMaterialDAOImpl;
import com.fortunaglobal.model.settings.Tbl_rocel3dRackType;
import com.fortunaglobal.model.settings.Tbl_rocel3dobjectsStatus;

public class RolleRack1javaDTO {
	public RolleRack1java addRolleRack1java(RolleRack1java rolleRack1java) {
		JavaObject3DDAO javaObject3DDAO = new JavaObject3DDAOImpl();
		RolleRack1javaMaterialDAO rolleRack1javaMaterialDAO = new RolleRack1javaMaterialDAOImpl();
		JavaObject3D javaObject3D = new JavaObject3D();

		javaObject3D.setX(rolleRack1java.getX());
		javaObject3D.setY(rolleRack1java.getY());
		javaObject3D.setZ(rolleRack1java.getZ());
		javaObject3D.setRotationX(rolleRack1java.getRotationX());
		javaObject3D.setRotationY(rolleRack1java.getRotationY());
		javaObject3D.setRotationZ(rolleRack1java.getRotationZ());
		javaObject3D.setName(rolleRack1java.getName());
		javaObject3D.setObject3DType(rolleRack1java.getObject3DType());
		javaObject3D.setScale(rolleRack1java.getScale());
		javaObject3D.setStatus(rolleRack1java.getStatus());
		javaObject3D.setShowroom(rolleRack1java.getShowroom());
System.out.println("before get material");
		// /////
		RolleRack1javaMaterial rolleRack1javaMaterial = rolleRack1java
				.getRolleRack1javaMaterial();
		System.out.println("after get material");
		// get the material of the rack
		rolleRack1javaMaterial.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.newlyadded));
		javaObject3D.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.newlyadded));
		rolleRack1java.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.newlyadded));
		// mark its status to new
		rolleRack1java.setRolleRack1javaMaterial(rolleRack1javaMaterialDAO
				.addRolleRack1javaMaterial(rolleRack1javaMaterial));
		System.out.println("after add new material to DB");
		// add new material and return new material's id
		rolleRack1java.setMaterialId(rolleRack1java.getRolleRack1javaMaterial()
				.getRolleRack1javaMaterialId());
		System.out.println("rolleRack1java.getMaterialId:"
				+ rolleRack1java.getMaterialId());
		// save new material's id to rack material id
		javaObject3D.setMaterialId(rolleRack1java.getMaterialId());

		javaObject3D = javaObject3DDAO.addJavaObject3D(javaObject3D);
		rolleRack1java.setObject3DId(javaObject3D.getObject3DId());
		// add new java object and return its object id

		return rolleRack1java;
	}

	public void editRolleRack1java(RolleRack1java rolleRack1java) {
		JavaObject3DDAO javaObject3DDAO = new JavaObject3DDAOImpl();
		RolleRack1javaMaterialDAO rolleRack1javaMaterialDAO = new RolleRack1javaMaterialDAOImpl();
		JavaObject3D javaObject3D = new JavaObject3D();

		javaObject3D.setX(rolleRack1java.getX());
		javaObject3D.setY(rolleRack1java.getY());
		javaObject3D.setZ(rolleRack1java.getZ());
		javaObject3D.setRotationX(rolleRack1java.getRotationX());
		javaObject3D.setRotationY(rolleRack1java.getRotationY());
		javaObject3D.setRotationZ(rolleRack1java.getRotationZ());
		javaObject3D.setName(rolleRack1java.getName());
		javaObject3D.setObject3DId(rolleRack1java.getObject3DId());
		javaObject3D.setObject3DType(rolleRack1java.getObject3DType());
		javaObject3D.setScale(rolleRack1java.getScale());
		javaObject3D.setStatus(rolleRack1java.getStatus());
		javaObject3D.setShowroom(rolleRack1java.getShowroom());
		javaObject3D.setMaterialId(rolleRack1java.getMaterialId());

		RolleRack1javaMaterial rolleRack1javaMaterial = rolleRack1java
				.getRolleRack1javaMaterial();
		rolleRack1javaMaterial.setRolleRack1javaMaterialId(rolleRack1java
				.getMaterialId());
		rolleRack1javaMaterial.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.updated));
		javaObject3D.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.updated));
		rolleRack1javaMaterialDAO
				.editRolleRack1javaMaterial(rolleRack1javaMaterial);
		javaObject3DDAO.editJavaObject3D(javaObject3D);
		System.out.println("@editRolleRack1java:roundRack1java.getShowroom()"
				+ rolleRack1java.getShowroom() + "javaObject3D.getObject3DId()"
				+ javaObject3D.getObject3DId() + "javaObject3D.getMaterialId()"
				+ javaObject3D.getMaterialId());
	}

	public ArrayList<RolleRack1java> listRolleRack1java(int currentShowRoom) {
		ArrayList<RolleRack1java> listRolleRack1java = new ArrayList<RolleRack1java>();

		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		RolleRack1javaMaterialDAO rolleRack1javaMaterialDAO = new RolleRack1javaMaterialDAOImpl();
		ArrayList<JavaObject3D> listJavaObject3D = new ArrayList<JavaObject3D>();
		RolleRack1java rolleRack1java;
		listJavaObject3D = javaObject3DDTO.listJavaObject3D(Integer
				.parseInt(Tbl_rocel3dRackType.rolleRack1java));

		for (JavaObject3D javaObject3D : listJavaObject3D) {
			rolleRack1java = new RolleRack1java();

			rolleRack1java.setName(javaObject3D.getName());
			rolleRack1java.setObject3DId(javaObject3D.getObject3DId());
			rolleRack1java.setObject3DType(javaObject3D.getObject3DType());
			rolleRack1java.setRotationX(javaObject3D.getRotationX());
			rolleRack1java.setRotationY(javaObject3D.getRotationY());
			rolleRack1java.setRotationZ(javaObject3D.getRotationZ());
			rolleRack1java.setScale(javaObject3D.getScale());
			rolleRack1java.setStatus(javaObject3D.getStatus());
			rolleRack1java.setX(javaObject3D.getX());
			rolleRack1java.setY(javaObject3D.getY());
			rolleRack1java.setZ(javaObject3D.getZ());
			rolleRack1java.setShowroom(javaObject3D.getShowroom());
			rolleRack1java.setMaterialId(javaObject3D.getMaterialId());

			rolleRack1java.setRolleRack1javaMaterial(rolleRack1javaMaterialDAO
					.getRolleRack1javaMaterial(rolleRack1java.getMaterialId()));
			rolleRack1java
					.getRolleRack1javaMaterial()
					.setRolleRack1javaMaterialId(rolleRack1java.getMaterialId());
			System.out.println("@listRolleRack1java:currentShowRoom"
					+ currentShowRoom + "javaObject3D.getObject3DId()"
					+ javaObject3D.getObject3DId()
					+ "javaObject3D.getMaterialId()"
					+ javaObject3D.getMaterialId());

			if (currentShowRoom == rolleRack1java.getShowroom()) {
				listRolleRack1java.add(rolleRack1java);
				System.out
						.println("listRolleRack1java.length@listRolleRack1java: "
								+ listRolleRack1java.size());
			}
		}
		return listRolleRack1java;
	}
}
