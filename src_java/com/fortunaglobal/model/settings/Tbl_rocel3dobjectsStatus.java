package com.fortunaglobal.model.settings;

public class Tbl_rocel3dobjectsStatus {

	public static String deleted = "0";// =0
	public static String active = "1";// =2^0->x%1<>0
	public static String hidden = "2";// =2^1->x%2<>0
	public static String newlyadded = "4";// =2^2->x%4<>0
	public static String changed = "8";// =2^3->x%8<>0
	public static String updated = "16";// =2^4->x%16<>0
	public static String reserved = "32";// =2^5->x%32<>0
}
