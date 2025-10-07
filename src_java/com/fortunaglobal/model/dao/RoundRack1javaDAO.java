package com.fortunaglobal.model.dao;

import java.util.ArrayList;

import com.fortunaglobal.model.RoundRack1java;

public interface RoundRack1javaDAO {

	RoundRack1java addJavaObject3D(RoundRack1java roundRack1java);

	void editJavaObject3D(RoundRack1java roundRack1java);

	void deleteJavaObject3D(RoundRack1java roundRack1java);

	int lastJavaObject3D();

	RoundRack1java getRoundRack1java(int roundRack1javaId);

	ArrayList<RoundRack1java> listJavaObject3D(int objectType);
}
