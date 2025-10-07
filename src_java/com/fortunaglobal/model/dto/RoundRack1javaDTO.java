package com.fortunaglobal.model.dto;

import java.util.ArrayList;

import com.fortunaglobal.model.JavaObject3D;
import com.fortunaglobal.model.RoundRack1java;
import com.fortunaglobal.model.RoundRack1javaMaterial;
import com.fortunaglobal.model.dao.JavaObject3DDAO;
import com.fortunaglobal.model.dao.RoundRack1javaMaterialDAO;
import com.fortunaglobal.model.dao.impl.mysql.JavaObject3DDAOImpl;
import com.fortunaglobal.model.dao.impl.mysql.RoundRack1javaMaterialDAOImpl;
import com.fortunaglobal.model.settings.Tbl_rocel3dRackType;
import com.fortunaglobal.model.settings.Tbl_rocel3dobjectsStatus;

public class RoundRack1javaDTO {

	public RoundRack1java addRoundRack1java(RoundRack1java roundRack1java) {
		JavaObject3DDAO javaObject3DDAO = new JavaObject3DDAOImpl();
		RoundRack1javaMaterialDAO roundRack1javaMaterialDAO = new RoundRack1javaMaterialDAOImpl();
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

		RoundRack1javaMaterial roundRack1javaMaterial = roundRack1java
		.getroundRack1javaMaterial();
		// get the material of the rack
		roundRack1javaMaterial.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.newlyadded));
		javaObject3D.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.newlyadded));
		roundRack1java.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.newlyadded));
		// mark its status to new
		roundRack1java.setroundRack1javaMaterial(roundRack1javaMaterialDAO
				.addRoundRack1javaMaterial(roundRack1javaMaterial));
		// add new material and return new material's id
		roundRack1java.setMaterialId(roundRack1java.getroundRack1javaMaterial()
				.getRoundRack1javaMaterialId());
		System.out.println("roundRack1java.getMaterialId:"
				+ roundRack1java.getMaterialId());
		// save new material's id to rack material id
		javaObject3D.setMaterialId(roundRack1java.getMaterialId());

		javaObject3D = javaObject3DDAO.addJavaObject3D(javaObject3D);
		roundRack1java.setObject3DId(javaObject3D.getObject3DId());
		// add new java object and return its object id

		return roundRack1java;
	}

	public void editRoundRack1java(RoundRack1java roundRack1java) {
		JavaObject3DDAO javaObject3DDAO = new JavaObject3DDAOImpl();
		RoundRack1javaMaterialDAO roundRack1javaMaterialDAO = new RoundRack1javaMaterialDAOImpl();
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
		javaObject3D.setMaterialId(roundRack1java.getMaterialId());
		// assign rack details on to a java object
		RoundRack1javaMaterial roundRack1javaMaterial = roundRack1java
		.getroundRack1javaMaterial();
		roundRack1javaMaterial.setRoundRack1javaMaterialId(roundRack1java
				.getMaterialId());
		// capture material object
		roundRack1javaMaterial.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.updated));
		javaObject3D.setStatus(Integer
				.parseInt(Tbl_rocel3dobjectsStatus.updated));
		roundRack1javaMaterialDAO
		.editRoundRack1javaMaterial(roundRack1javaMaterial);
		// edit material
		javaObject3DDAO.editJavaObject3D(javaObject3D);
		// edit java object
		System.out.println("@editRoundRack1java:roundRack1java.getShowroom()"
				+ roundRack1java.getShowroom() + "javaObject3D.getObject3DId()"
				+ javaObject3D.getObject3DId() + "javaObject3D.getMaterialId()"
				+ javaObject3D.getMaterialId());
	}

	public ArrayList<RoundRack1java> listRoundRack1java(int currentShowRoom) {
		ArrayList<RoundRack1java> listRoundRack1java = new ArrayList<RoundRack1java>();

		JavaObject3DDAO javaObject3DDAO = new JavaObject3DDAOImpl();
		RoundRack1javaMaterialDAO roundRack1javaMaterialDAO = new RoundRack1javaMaterialDAOImpl();
		ArrayList<JavaObject3D> listJavaObject3D = new ArrayList<JavaObject3D>();
		RoundRack1java roundRack1java;
		listJavaObject3D = javaObject3DDAO.listJavaObject3D(Integer
				.parseInt(Tbl_rocel3dRackType.roundRack1java));

		for (JavaObject3D javaObject3D : listJavaObject3D) {
			roundRack1java = new RoundRack1java();

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
			roundRack1java.setMaterialId(javaObject3D.getMaterialId());
			roundRack1java.setShowroom(javaObject3D.getShowroom());
			roundRack1java.setroundRack1javaMaterial(roundRack1javaMaterialDAO
					.getRoundRack1javaMaterial(javaObject3D.getMaterialId()));
			// import material data using material id

			System.out.println("@listRoundRack1java:currentShowRoom"
					+ currentShowRoom + "javaObject3D.getObject3DId()"
					+ javaObject3D.getObject3DId()
					+ "javaObject3D.getMaterialId()"
					+ javaObject3D.getMaterialId());
			if (currentShowRoom == roundRack1java.getShowroom()) {
				listRoundRack1java.add(roundRack1java);
				System.out
				.println("listRoundRack1java.length@listRoundRack1java: "
						+ listRoundRack1java.size());
			}
		}
		return listRoundRack1java;
	}
}