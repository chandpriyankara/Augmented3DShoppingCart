package com.fortunaglobal.model.test;

import java.util.ArrayList;

import junit.framework.TestCase;

import org.junit.Test;

import com.fortunaglobal.model.JavaObject3D;
import com.fortunaglobal.model.RoundRack1java;
import com.fortunaglobal.model.dao.JavaObject3DDAO;
import com.fortunaglobal.model.dao.impl.mysql.JavaObject3DDAOImpl;

public class JavaObject3DDAOImplTest extends TestCase {

	@Test
	public void testAddJavaObject3D() {
		RoundRack1java roundRack1java = new RoundRack1java();
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		roundRack1java.setObject3DId(43);
		javaObject3DDTO.addJavaObject3D(roundRack1java);

		System.out.println(roundRack1java.getObject3DId());
	}

	@Test
	public void testDeleteJavaObject3D() {
		RoundRack1java roundRack1java = new RoundRack1java();
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		roundRack1java.setObject3DId(43);
		javaObject3DDTO.deleteJavaObject3D(roundRack1java);

		System.out.println(roundRack1java.getStatus());
	}

	@Test
	public void testEditJavaObject3D() {
		JavaObject3D roundRack1java = new RoundRack1java();
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();

		roundRack1java = javaObject3DDTO.getJavaObject3D(55);

		roundRack1java.setName(roundRack1java.getName() + 1);
		roundRack1java.setObject3DType(roundRack1java.getObject3DType() + 1);
		roundRack1java.setRotationX(roundRack1java.getRotationX() + 1);
		roundRack1java.setRotationY(roundRack1java.getRotationY() + 1);
		roundRack1java.setRotationZ(roundRack1java.getRotationZ() + 1);
		roundRack1java.setScale(roundRack1java.getScale() + 1);
		roundRack1java.setStatus(roundRack1java.getStatus() + 1);
		roundRack1java.setX(roundRack1java.getX() + 1);
		roundRack1java.setY(roundRack1java.getY() + 1);
		roundRack1java.setZ(roundRack1java.getZ() + 1);
		roundRack1java.setShowroom(roundRack1java.getShowroom() + 1);

		javaObject3DDTO.editJavaObject3D(roundRack1java);

		roundRack1java = new RoundRack1java();
		javaObject3DDTO = new JavaObject3DDAOImpl();

		roundRack1java = javaObject3DDTO.getJavaObject3D(55);

		System.out.println(roundRack1java.getName());
		System.out.println(roundRack1java.getObject3DId());
		System.out.println(roundRack1java.getObject3DType());
		System.out.println(roundRack1java.getRotationX());
		System.out.println(roundRack1java.getRotationY());
		System.out.println(roundRack1java.getRotationZ());
		System.out.println(roundRack1java.getScale());
		System.out.println(roundRack1java.getStatus());
		System.out.println(roundRack1java.getX());
		System.out.println(roundRack1java.getY());
		System.out.println(roundRack1java.getZ());
		System.out.println(roundRack1java.getShowroom());
	}

	@Test
	public void testLastJavaObject3D() {
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		System.out.println(javaObject3DDTO.lastJavaObject3D());
	}

	@Test
	public void testGetJavaObject3D() {
		JavaObject3D roundRack1java = new RoundRack1java();
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();

		roundRack1java = javaObject3DDTO.getJavaObject3D(55);

		System.out.println(roundRack1java.getName());
		System.out.println(roundRack1java.getObject3DId());
		System.out.println(roundRack1java.getObject3DType());
		System.out.println(roundRack1java.getRotationX());
		System.out.println(roundRack1java.getRotationY());
		System.out.println(roundRack1java.getRotationZ());
		System.out.println(roundRack1java.getScale());
		System.out.println(roundRack1java.getStatus());
		System.out.println(roundRack1java.getX());
		System.out.println(roundRack1java.getY());
		System.out.println(roundRack1java.getZ());
		System.out.println(roundRack1java.getShowroom());
	}

	@Test
	public void testListJavaObject3D() {
		JavaObject3DDAO javaObject3DDTO = new JavaObject3DDAOImpl();
		ArrayList<JavaObject3D> listJavaObject3D = new ArrayList<JavaObject3D>();
		listJavaObject3D = javaObject3DDTO.listJavaObject3D(1);

		for (JavaObject3D javaObject3D : listJavaObject3D) {
			System.out.println(javaObject3D.getName());
			System.out.println(javaObject3D.getObject3DId());
			System.out.println(javaObject3D.getObject3DType());
			System.out.println(javaObject3D.getRotationX());
			System.out.println(javaObject3D.getRotationY());
			System.out.println(javaObject3D.getRotationZ());
			System.out.println(javaObject3D.getScale());
			System.out.println(javaObject3D.getStatus());
			System.out.println(javaObject3D.getX());
			System.out.println(javaObject3D.getY());
			System.out.println(javaObject3D.getZ());
			System.out.println(javaObject3D.getShowroom());
			System.out.println();
			javaObject3DDTO.editJavaObject3D(javaObject3D);
		}
	}
}
