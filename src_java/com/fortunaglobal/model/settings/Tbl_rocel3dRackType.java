package com.fortunaglobal.model.settings;

public class Tbl_rocel3dRackType {
	public static String roundRack1java = "1";// =0
	public static String dynamicRack1java = "2";// =2^0->x%1<>0
	public static String rolleRack1java = "3";// =2^1->x%2<>0

	public static String getRoundRack1java() {
		return roundRack1java;
	}

	public static String getDynamicRack1java() {
		return dynamicRack1java;
	}

	public static String getRolleRack1java() {
		return rolleRack1java;
	}
}
