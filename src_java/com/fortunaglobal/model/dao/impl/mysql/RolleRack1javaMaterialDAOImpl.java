package com.fortunaglobal.model.dao.impl.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.fortunaglobal.model.RolleRack1javaMaterial;
import com.fortunaglobal.model.dao.RolleRack1javaMaterialDAO;
import com.fortunaglobal.model.settings.RocelDBConnect;
import com.fortunaglobal.model.settings.RocelTables;
import com.fortunaglobal.model.settings.Tbl_rocel3dobjectsStatus;

public class RolleRack1javaMaterialDAOImpl implements RolleRack1javaMaterialDAO {
	private static Connection connection = null;

	@Override
	public RolleRack1javaMaterial addRolleRack1javaMaterial(
			RolleRack1javaMaterial rolleRack1javaMaterial) {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create a database
		Statement query = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			return rolleRack1javaMaterial;
		}

		String sql = "INSERT INTO "
				+ RocelTables.tbl_rocel_rollerack1javamaterial
				+ "( "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleRack1javaMaterialname
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.footcubesMaterialListUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.panelcubesMaterialListUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.hangerBar1BitmapFileMaterialUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.hangerBar2BitmapFileMaterialUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.status
				+ ") VALUES( '"
				+ rolleRack1javaMaterial.getRolleRack1javaMaterialname()
				+ "', '"
				+ rolleRack1javaMaterial.getFootcubesMaterialListUrl()
				+ "', '"
				+ rolleRack1javaMaterial.getPanelcubesMaterialListUrl()
				+ "', '"
				+ rolleRack1javaMaterial.getHangerBar1BitmapFileMaterialUrl()
				+ "', '"
				+ rolleRack1javaMaterial.getHangerBar2BitmapFileMaterialUrl()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList16Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList1Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList2Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList3Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList4Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList5Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList6Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList7Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList8Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList9Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList10Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList11Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList12Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList13Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList14Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList15Url()
				+ "', '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList16Url() + "', "
				+ rolleRack1javaMaterial.getStatus() + ")";
		System.out.println(sql);
		// log.info(sql);
		try {
			query.executeUpdate(sql);
			rolleRack1javaMaterial
					.setRolleRack1javaMaterialId(lastRolleRack1javaMaterial());
			System.out.println(rolleRack1javaMaterial
					.getRolleRack1javaMaterialId());
			return rolleRack1javaMaterial;
		} catch (SQLException sqle) {
			System.out
					.println("Could not retrieve data@addRolleRack1javaMaterial: "
							+ sqle.toString());
			return null;
		} finally {
			if (query != null) {
				try {
					query.close();
				} catch (SQLException sqlEx) {
				}
				query = null;
			}
		}
	}

	@Override
	public void deleteRolleRack1javaMaterial(
			RolleRack1javaMaterial rolleRack1javaMaterial) {
		// TODO Auto-generated method stub

	}

	@Override
	public void editRolleRack1javaMaterial(
			RolleRack1javaMaterial rolleRack1javaMaterial) {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create connection
		Statement query = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			// return rolleRack1javaMaterial;
		}
		String sql = "UPDATE "
				+ RocelTables.tbl_rocel_rollerack1javamaterial
				+ " SET "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleRack1javaMaterialname
				+ " = '"
				+ rolleRack1javaMaterial.getRolleRack1javaMaterialname()
				+ "', "
				+ tbl_rocel_rollerack1javamaterialColumns.footcubesMaterialListUrl
				+ " = '"
				+ rolleRack1javaMaterial.getFootcubesMaterialListUrl()
				+ "', "
				+ tbl_rocel_rollerack1javamaterialColumns.hangerBar1BitmapFileMaterialUrl
				+ " = '"
				+ rolleRack1javaMaterial.getHangerBar1BitmapFileMaterialUrl()
				+ "', "
				+ tbl_rocel_rollerack1javamaterialColumns.hangerBar2BitmapFileMaterialUrl
				+ " = '"
				+ rolleRack1javaMaterial.getHangerBar2BitmapFileMaterialUrl()
				+ "', "
				+ tbl_rocel_rollerack1javamaterialColumns.panelcubesMaterialListUrl
				+ " = '"
				+ rolleRack1javaMaterial.getPanelcubesMaterialListUrl()
				+ "', "

				// five majour types are over
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x41plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x42plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x43plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x44plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x45plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x46plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x47plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x48plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x49plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x410plateMaterialList16Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList1Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList1Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList2Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList2Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList3Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList3Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList4Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList4Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList5Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList5Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList6Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList6Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList7Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList7Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList8Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList8Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList9Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList9Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList10Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList10Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList11Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList11Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList12Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList12Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList13Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList13Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList14Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList14Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList15Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList15Url()
				+ "' ,"
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList16Url
				+ " = '"
				+ rolleRack1javaMaterial
						.getRolleTray4x411plateMaterialList16Url()
				+ "', "
				+ tbl_rocel_rollerack1javamaterialColumns.status
				+ " = "
				+ rolleRack1javaMaterial.getStatus()
				+ " WHERE "
				+ tbl_rocel_rollerack1javamaterialColumns.rollerack1javaMaterialId
				+ " = " + rolleRack1javaMaterial.getRolleRack1javaMaterialId();

		System.out.println(sql);
		// log.info(sql);
		try {
			query.executeUpdate(sql);

			// RolleRack1javaMaterial =
			// this.getRolleRack1javaMaterial(RolleRack1javaMaterial.getObject3DId());
			// return RolleRack1javaMaterial;
		} catch (SQLException sqle) {
			System.out
					.println("Could not retrieve data@addRolleRack1javaMaterial: "
							+ sqle.toString());
			// return null;
		} finally {
			if (query != null) {
				try {
					query.close();
				} catch (SQLException sqlEx) {
				}
				query = null;
			}
		}
	}

	@Override
	public RolleRack1javaMaterial getRolleRack1javaMaterial(
			int rolleRack1javaMaterialId) {
		RolleRack1javaMaterial rolleRack1javaMaterial = new RolleRack1javaMaterial();
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create a database
		Statement query = null;
		ResultSet resultSet = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			return null;
		}

		String sql = "SELECT "
				+ tbl_rocel_rollerack1javamaterialColumns.rollerack1javaMaterialId
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleRack1javaMaterialname
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.footcubesMaterialListUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.panelcubesMaterialListUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.hangerBar1BitmapFileMaterialUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.hangerBar2BitmapFileMaterialUrl
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList1Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList2Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList3Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList4Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList5Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList6Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList7Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList8Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList9Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList10Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList11Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList12Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList13Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList14Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList15Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList16Url
				+ ", "
				+ tbl_rocel_rollerack1javamaterialColumns.status
				+ " FROM "
				+ RocelTables.tbl_rocel_rollerack1javamaterial
				+ " WHERE "
				+ tbl_rocel_rollerack1javamaterialColumns.rollerack1javaMaterialId
				+ " = " + rolleRack1javaMaterialId;

		System.out.println(sql);
		// log.info(sql);
		try {
			if (query.execute(sql)) {
				resultSet = query.getResultSet();
				if (resultSet.next()) {
					rolleRack1javaMaterial
							.setRolleRack1javaMaterialname(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleRack1javaMaterialname));
					rolleRack1javaMaterial
							.setHangerBar1BitmapFileMaterialUrl(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.hangerBar1BitmapFileMaterialUrl));
					rolleRack1javaMaterial
							.setHangerBar2BitmapFileMaterialUrl(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.hangerBar2BitmapFileMaterialUrl));
					rolleRack1javaMaterial
							.setFootcubesMaterialListUrl(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.footcubesMaterialListUrl));
					rolleRack1javaMaterial
							.setPanelcubesMaterialListUrl(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.panelcubesMaterialListUrl));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x41plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x41plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x42plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x42plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x43plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x43plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x44plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x44plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x45plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x45plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x46plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x46plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x47plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x47plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x48plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x48plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x49plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x49plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x410plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x410plateMaterialList16Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList1Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList1Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList2Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList2Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList3Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList3Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList4Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList4Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList5Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList5Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList6Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList6Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList7Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList7Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList8Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList8Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList9Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList9Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList10Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList10Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList11Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList11Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList12Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList12Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList13Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList13Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList14Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList14Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList15Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList15Url));
					rolleRack1javaMaterial
							.setRolleTray4x411plateMaterialList16Url(resultSet
									.getString(tbl_rocel_rollerack1javamaterialColumns.rolleTray4x411plateMaterialList16Url));
					rolleRack1javaMaterial
							.setStatus(resultSet
									.getInt(tbl_rocel_rollerack1javamaterialColumns.status));
					rolleRack1javaMaterial
							.setRolleRack1javaMaterialId(resultSet
									.getInt(tbl_rocel_rollerack1javamaterialColumns.rollerack1javaMaterialId));
				}
				return rolleRack1javaMaterial;
			} else {
				throw new SQLException("No data in the Table");
			}
		} catch (SQLException sqle) {
			System.out
					.println("Could not retrieve data@lastRolleRack1javaMaterial: "
							+ sqle.toString());
			return null;
		} finally {
			if (query != null) {
				try {
					query.close();
				} catch (SQLException sqlEx) {
				}
				query = null;
			}
		}
	}

	@Override
	public int lastRolleRack1javaMaterial() {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create a database
		Statement query = null;
		ResultSet resultSet = null;
		int x = 0;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			return -1;
		}

		String sql = "select MAX("
				+ tbl_rocel_rollerack1javamaterialColumns.rollerack1javaMaterialId
				+ ") as last_id from "
				+ RocelTables.tbl_rocel_rollerack1javamaterial + " WHERE "
				+ tbl_rocel_rollerack1javamaterialColumns.status + " != "
				+ Tbl_rocel3dobjectsStatus.deleted;
		System.out.println(sql);
		// log.info(sql);
		try {
			if (query.execute(sql)) {
				resultSet = query.getResultSet();
				if (resultSet.next()) {
					x = resultSet.getInt("last_id");
				}
				return x;
			} else {
				throw new SQLException("No data in the Table");
			}
		} catch (SQLException sqle) {
			System.out
					.println("Could not retrieve data@lastRolleRack1javaMaterial: "
							+ sqle.toString());
			return -1;
		} finally {
			if (query != null) {
				try {
					query.close();
				} catch (SQLException sqlEx) {
				}
				query = null;
			}
		}
	}

	@Override
	public ArrayList<RolleRack1javaMaterial> listRolleRack1javaMaterial(
			int objectType) {
		// TODO Auto-generated method stub
		return null;
	}

	private static class tbl_rocel_rollerack1javamaterialColumns {

		private static String rollerack1javaMaterialId = "rollerack1javaMaterialId";
		private static String rolleRack1javaMaterialname = "rolleRack1javaMaterialname";

		private static String footcubesMaterialListUrl = "footcubesMaterialListUrl";
		private static String panelcubesMaterialListUrl = "panelcubesMaterialListUrl";
		private static String hangerBar1BitmapFileMaterialUrl = "hangerBar1BitmapFileMaterialUrl";
		private static String hangerBar2BitmapFileMaterialUrl = "hangerBar2BitmapFileMaterialUrl";

		private static String rolleTray4x41plateMaterialList1Url = "rolleTray4x41plateMaterialList1Url";
		private static String rolleTray4x41plateMaterialList2Url = "rolleTray4x41plateMaterialList2Url";
		private static String rolleTray4x41plateMaterialList3Url = "rolleTray4x41plateMaterialList3Url";
		private static String rolleTray4x41plateMaterialList4Url = "rolleTray4x41plateMaterialList4Url";
		private static String rolleTray4x41plateMaterialList5Url = "rolleTray4x41plateMaterialList5Url";
		private static String rolleTray4x41plateMaterialList6Url = "rolleTray4x41plateMaterialList6Url";
		private static String rolleTray4x41plateMaterialList7Url = "rolleTray4x41plateMaterialList7Url";
		private static String rolleTray4x41plateMaterialList8Url = "rolleTray4x41plateMaterialList8Url";
		private static String rolleTray4x41plateMaterialList9Url = "rolleTray4x41plateMaterialList9Url";
		private static String rolleTray4x41plateMaterialList10Url = "rolleTray4x41plateMaterialList10Url";
		private static String rolleTray4x41plateMaterialList11Url = "rolleTray4x41plateMaterialList11Url";
		private static String rolleTray4x41plateMaterialList12Url = "rolleTray4x41plateMaterialList12Url";
		private static String rolleTray4x41plateMaterialList13Url = "rolleTray4x41plateMaterialList13Url";
		private static String rolleTray4x41plateMaterialList14Url = "rolleTray4x41plateMaterialList14Url";
		private static String rolleTray4x41plateMaterialList15Url = "rolleTray4x41plateMaterialList15Url";
		private static String rolleTray4x41plateMaterialList16Url = "rolleTray4x41plateMaterialList16Url";

		private static String rolleTray4x42plateMaterialList1Url = "rolleTray4x42plateMaterialList1Url";
		private static String rolleTray4x42plateMaterialList2Url = "rolleTray4x42plateMaterialList2Url";
		private static String rolleTray4x42plateMaterialList3Url = "rolleTray4x42plateMaterialList3Url";
		private static String rolleTray4x42plateMaterialList4Url = "rolleTray4x42plateMaterialList4Url";
		private static String rolleTray4x42plateMaterialList5Url = "rolleTray4x42plateMaterialList5Url";
		private static String rolleTray4x42plateMaterialList6Url = "rolleTray4x42plateMaterialList6Url";
		private static String rolleTray4x42plateMaterialList7Url = "rolleTray4x42plateMaterialList7Url";
		private static String rolleTray4x42plateMaterialList8Url = "rolleTray4x42plateMaterialList8Url";
		private static String rolleTray4x42plateMaterialList9Url = "rolleTray4x42plateMaterialList9Url";
		private static String rolleTray4x42plateMaterialList10Url = "rolleTray4x42plateMaterialList10Url";
		private static String rolleTray4x42plateMaterialList11Url = "rolleTray4x42plateMaterialList11Url";
		private static String rolleTray4x42plateMaterialList12Url = "rolleTray4x42plateMaterialList12Url";
		private static String rolleTray4x42plateMaterialList13Url = "rolleTray4x42plateMaterialList13Url";
		private static String rolleTray4x42plateMaterialList14Url = "rolleTray4x42plateMaterialList14Url";
		private static String rolleTray4x42plateMaterialList15Url = "rolleTray4x42plateMaterialList15Url";
		private static String rolleTray4x42plateMaterialList16Url = "rolleTray4x42plateMaterialList16Url";

		private static String rolleTray4x43plateMaterialList1Url = "rolleTray4x43plateMaterialList1Url";
		private static String rolleTray4x43plateMaterialList2Url = "rolleTray4x43plateMaterialList2Url";
		private static String rolleTray4x43plateMaterialList3Url = "rolleTray4x43plateMaterialList3Url";
		private static String rolleTray4x43plateMaterialList4Url = "rolleTray4x43plateMaterialList4Url";
		private static String rolleTray4x43plateMaterialList5Url = "rolleTray4x43plateMaterialList5Url";
		private static String rolleTray4x43plateMaterialList6Url = "rolleTray4x43plateMaterialList6Url";
		private static String rolleTray4x43plateMaterialList7Url = "rolleTray4x43plateMaterialList7Url";
		private static String rolleTray4x43plateMaterialList8Url = "rolleTray4x43plateMaterialList8Url";
		private static String rolleTray4x43plateMaterialList9Url = "rolleTray4x43plateMaterialList9Url";
		private static String rolleTray4x43plateMaterialList10Url = "rolleTray4x43plateMaterialList10Url";
		private static String rolleTray4x43plateMaterialList11Url = "rolleTray4x43plateMaterialList11Url";
		private static String rolleTray4x43plateMaterialList12Url = "rolleTray4x43plateMaterialList12Url";
		private static String rolleTray4x43plateMaterialList13Url = "rolleTray4x43plateMaterialList13Url";
		private static String rolleTray4x43plateMaterialList14Url = "rolleTray4x43plateMaterialList14Url";
		private static String rolleTray4x43plateMaterialList15Url = "rolleTray4x43plateMaterialList15Url";
		private static String rolleTray4x43plateMaterialList16Url = "rolleTray4x43plateMaterialList16Url";

		private static String rolleTray4x44plateMaterialList1Url = "rolleTray4x44plateMaterialList1Url";
		private static String rolleTray4x44plateMaterialList2Url = "rolleTray4x44plateMaterialList2Url";
		private static String rolleTray4x44plateMaterialList3Url = "rolleTray4x44plateMaterialList3Url";
		private static String rolleTray4x44plateMaterialList4Url = "rolleTray4x44plateMaterialList4Url";
		private static String rolleTray4x44plateMaterialList5Url = "rolleTray4x44plateMaterialList5Url";
		private static String rolleTray4x44plateMaterialList6Url = "rolleTray4x44plateMaterialList6Url";
		private static String rolleTray4x44plateMaterialList7Url = "rolleTray4x44plateMaterialList7Url";
		private static String rolleTray4x44plateMaterialList8Url = "rolleTray4x44plateMaterialList8Url";
		private static String rolleTray4x44plateMaterialList9Url = "rolleTray4x44plateMaterialList9Url";
		private static String rolleTray4x44plateMaterialList10Url = "rolleTray4x44plateMaterialList10Url";
		private static String rolleTray4x44plateMaterialList11Url = "rolleTray4x44plateMaterialList11Url";
		private static String rolleTray4x44plateMaterialList12Url = "rolleTray4x44plateMaterialList12Url";
		private static String rolleTray4x44plateMaterialList13Url = "rolleTray4x44plateMaterialList13Url";
		private static String rolleTray4x44plateMaterialList14Url = "rolleTray4x44plateMaterialList14Url";
		private static String rolleTray4x44plateMaterialList15Url = "rolleTray4x44plateMaterialList15Url";
		private static String rolleTray4x44plateMaterialList16Url = "rolleTray4x44plateMaterialList16Url";

		private static String rolleTray4x45plateMaterialList1Url = "rolleTray4x45plateMaterialList1Url";
		private static String rolleTray4x45plateMaterialList2Url = "rolleTray4x45plateMaterialList2Url";
		private static String rolleTray4x45plateMaterialList3Url = "rolleTray4x45plateMaterialList3Url";
		private static String rolleTray4x45plateMaterialList4Url = "rolleTray4x45plateMaterialList4Url";
		private static String rolleTray4x45plateMaterialList5Url = "rolleTray4x45plateMaterialList5Url";
		private static String rolleTray4x45plateMaterialList6Url = "rolleTray4x45plateMaterialList6Url";
		private static String rolleTray4x45plateMaterialList7Url = "rolleTray4x45plateMaterialList7Url";
		private static String rolleTray4x45plateMaterialList8Url = "rolleTray4x45plateMaterialList8Url";
		private static String rolleTray4x45plateMaterialList9Url = "rolleTray4x45plateMaterialList9Url";
		private static String rolleTray4x45plateMaterialList10Url = "rolleTray4x45plateMaterialList10Url";
		private static String rolleTray4x45plateMaterialList11Url = "rolleTray4x45plateMaterialList11Url";
		private static String rolleTray4x45plateMaterialList12Url = "rolleTray4x45plateMaterialList12Url";
		private static String rolleTray4x45plateMaterialList13Url = "rolleTray4x45plateMaterialList13Url";
		private static String rolleTray4x45plateMaterialList14Url = "rolleTray4x45plateMaterialList14Url";
		private static String rolleTray4x45plateMaterialList15Url = "rolleTray4x45plateMaterialList15Url";
		private static String rolleTray4x45plateMaterialList16Url = "rolleTray4x45plateMaterialList16Url";

		private static String rolleTray4x46plateMaterialList1Url = "rolleTray4x46plateMaterialList1Url";
		private static String rolleTray4x46plateMaterialList2Url = "rolleTray4x46plateMaterialList2Url";
		private static String rolleTray4x46plateMaterialList3Url = "rolleTray4x46plateMaterialList3Url";
		private static String rolleTray4x46plateMaterialList4Url = "rolleTray4x46plateMaterialList4Url";
		private static String rolleTray4x46plateMaterialList5Url = "rolleTray4x46plateMaterialList5Url";
		private static String rolleTray4x46plateMaterialList6Url = "rolleTray4x46plateMaterialList6Url";
		private static String rolleTray4x46plateMaterialList7Url = "rolleTray4x46plateMaterialList7Url";
		private static String rolleTray4x46plateMaterialList8Url = "rolleTray4x46plateMaterialList8Url";
		private static String rolleTray4x46plateMaterialList9Url = "rolleTray4x46plateMaterialList9Url";
		private static String rolleTray4x46plateMaterialList10Url = "rolleTray4x46plateMaterialList10Url";
		private static String rolleTray4x46plateMaterialList11Url = "rolleTray4x46plateMaterialList11Url";
		private static String rolleTray4x46plateMaterialList12Url = "rolleTray4x46plateMaterialList12Url";
		private static String rolleTray4x46plateMaterialList13Url = "rolleTray4x46plateMaterialList13Url";
		private static String rolleTray4x46plateMaterialList14Url = "rolleTray4x46plateMaterialList14Url";
		private static String rolleTray4x46plateMaterialList15Url = "rolleTray4x46plateMaterialList15Url";
		private static String rolleTray4x46plateMaterialList16Url = "rolleTray4x46plateMaterialList16Url";

		private static String rolleTray4x47plateMaterialList1Url = "rolleTray4x47plateMaterialList1Url";
		private static String rolleTray4x47plateMaterialList2Url = "rolleTray4x47plateMaterialList2Url";
		private static String rolleTray4x47plateMaterialList3Url = "rolleTray4x47plateMaterialList3Url";
		private static String rolleTray4x47plateMaterialList4Url = "rolleTray4x47plateMaterialList4Url";
		private static String rolleTray4x47plateMaterialList5Url = "rolleTray4x47plateMaterialList5Url";
		private static String rolleTray4x47plateMaterialList6Url = "rolleTray4x47plateMaterialList6Url";
		private static String rolleTray4x47plateMaterialList7Url = "rolleTray4x47plateMaterialList7Url";
		private static String rolleTray4x47plateMaterialList8Url = "rolleTray4x47plateMaterialList8Url";
		private static String rolleTray4x47plateMaterialList9Url = "rolleTray4x47plateMaterialList9Url";
		private static String rolleTray4x47plateMaterialList10Url = "rolleTray4x47plateMaterialList10Url";
		private static String rolleTray4x47plateMaterialList11Url = "rolleTray4x47plateMaterialList11Url";
		private static String rolleTray4x47plateMaterialList12Url = "rolleTray4x47plateMaterialList12Url";
		private static String rolleTray4x47plateMaterialList13Url = "rolleTray4x47plateMaterialList13Url";
		private static String rolleTray4x47plateMaterialList14Url = "rolleTray4x47plateMaterialList14Url";
		private static String rolleTray4x47plateMaterialList15Url = "rolleTray4x47plateMaterialList15Url";
		private static String rolleTray4x47plateMaterialList16Url = "rolleTray4x47plateMaterialList16Url";

		private static String rolleTray4x48plateMaterialList1Url = "rolleTray4x48plateMaterialList1Url";
		private static String rolleTray4x48plateMaterialList2Url = "rolleTray4x48plateMaterialList2Url";
		private static String rolleTray4x48plateMaterialList3Url = "rolleTray4x48plateMaterialList3Url";
		private static String rolleTray4x48plateMaterialList4Url = "rolleTray4x48plateMaterialList4Url";
		private static String rolleTray4x48plateMaterialList5Url = "rolleTray4x48plateMaterialList5Url";
		private static String rolleTray4x48plateMaterialList6Url = "rolleTray4x48plateMaterialList6Url";
		private static String rolleTray4x48plateMaterialList7Url = "rolleTray4x48plateMaterialList7Url";
		private static String rolleTray4x48plateMaterialList8Url = "rolleTray4x48plateMaterialList8Url";
		private static String rolleTray4x48plateMaterialList9Url = "rolleTray4x48plateMaterialList9Url";
		private static String rolleTray4x48plateMaterialList10Url = "rolleTray4x48plateMaterialList10Url";
		private static String rolleTray4x48plateMaterialList11Url = "rolleTray4x48plateMaterialList11Url";
		private static String rolleTray4x48plateMaterialList12Url = "rolleTray4x48plateMaterialList12Url";
		private static String rolleTray4x48plateMaterialList13Url = "rolleTray4x48plateMaterialList13Url";
		private static String rolleTray4x48plateMaterialList14Url = "rolleTray4x48plateMaterialList14Url";
		private static String rolleTray4x48plateMaterialList15Url = "rolleTray4x48plateMaterialList15Url";
		private static String rolleTray4x48plateMaterialList16Url = "rolleTray4x48plateMaterialList16Url";

		private static String rolleTray4x49plateMaterialList1Url = "rolleTray4x49plateMaterialList1Url";
		private static String rolleTray4x49plateMaterialList2Url = "rolleTray4x49plateMaterialList2Url";
		private static String rolleTray4x49plateMaterialList3Url = "rolleTray4x49plateMaterialList3Url";
		private static String rolleTray4x49plateMaterialList4Url = "rolleTray4x49plateMaterialList4Url";
		private static String rolleTray4x49plateMaterialList5Url = "rolleTray4x49plateMaterialList5Url";
		private static String rolleTray4x49plateMaterialList6Url = "rolleTray4x49plateMaterialList6Url";
		private static String rolleTray4x49plateMaterialList7Url = "rolleTray4x49plateMaterialList7Url";
		private static String rolleTray4x49plateMaterialList8Url = "rolleTray4x49plateMaterialList8Url";
		private static String rolleTray4x49plateMaterialList9Url = "rolleTray4x49plateMaterialList9Url";
		private static String rolleTray4x49plateMaterialList10Url = "rolleTray4x49plateMaterialList10Url";
		private static String rolleTray4x49plateMaterialList11Url = "rolleTray4x49plateMaterialList11Url";
		private static String rolleTray4x49plateMaterialList12Url = "rolleTray4x49plateMaterialList12Url";
		private static String rolleTray4x49plateMaterialList13Url = "rolleTray4x49plateMaterialList13Url";
		private static String rolleTray4x49plateMaterialList14Url = "rolleTray4x49plateMaterialList14Url";
		private static String rolleTray4x49plateMaterialList15Url = "rolleTray4x49plateMaterialList15Url";
		private static String rolleTray4x49plateMaterialList16Url = "rolleTray4x49plateMaterialList16Url";

		private static String rolleTray4x410plateMaterialList1Url = "rolleTray4x410plateMaterialList1Url";
		private static String rolleTray4x410plateMaterialList2Url = "rolleTray4x410plateMaterialList2Url";
		private static String rolleTray4x410plateMaterialList3Url = "rolleTray4x410plateMaterialList3Url";
		private static String rolleTray4x410plateMaterialList4Url = "rolleTray4x410plateMaterialList4Url";
		private static String rolleTray4x410plateMaterialList5Url = "rolleTray4x410plateMaterialList5Url";
		private static String rolleTray4x410plateMaterialList6Url = "rolleTray4x410plateMaterialList6Url";
		private static String rolleTray4x410plateMaterialList7Url = "rolleTray4x410plateMaterialList7Url";
		private static String rolleTray4x410plateMaterialList8Url = "rolleTray4x410plateMaterialList8Url";
		private static String rolleTray4x410plateMaterialList9Url = "rolleTray4x410plateMaterialList9Url";
		private static String rolleTray4x410plateMaterialList10Url = "rolleTray4x410plateMaterialList10Url";
		private static String rolleTray4x410plateMaterialList11Url = "rolleTray4x410plateMaterialList11Url";
		private static String rolleTray4x410plateMaterialList12Url = "rolleTray4x410plateMaterialList12Url";
		private static String rolleTray4x410plateMaterialList13Url = "rolleTray4x410plateMaterialList13Url";
		private static String rolleTray4x410plateMaterialList14Url = "rolleTray4x410plateMaterialList14Url";
		private static String rolleTray4x410plateMaterialList15Url = "rolleTray4x410plateMaterialList15Url";
		private static String rolleTray4x410plateMaterialList16Url = "rolleTray4x410plateMaterialList16Url";

		private static String rolleTray4x411plateMaterialList1Url = "rolleTray4x411plateMaterialList1Url";
		private static String rolleTray4x411plateMaterialList2Url = "rolleTray4x411plateMaterialList2Url";
		private static String rolleTray4x411plateMaterialList3Url = "rolleTray4x411plateMaterialList3Url";
		private static String rolleTray4x411plateMaterialList4Url = "rolleTray4x411plateMaterialList4Url";
		private static String rolleTray4x411plateMaterialList5Url = "rolleTray4x411plateMaterialList5Url";
		private static String rolleTray4x411plateMaterialList6Url = "rolleTray4x411plateMaterialList6Url";
		private static String rolleTray4x411plateMaterialList7Url = "rolleTray4x411plateMaterialList7Url";
		private static String rolleTray4x411plateMaterialList8Url = "rolleTray4x411plateMaterialList8Url";
		private static String rolleTray4x411plateMaterialList9Url = "rolleTray4x411plateMaterialList9Url";
		private static String rolleTray4x411plateMaterialList10Url = "rolleTray4x411plateMaterialList10Url";
		private static String rolleTray4x411plateMaterialList11Url = "rolleTray4x411plateMaterialList11Url";
		private static String rolleTray4x411plateMaterialList12Url = "rolleTray4x411plateMaterialList12Url";
		private static String rolleTray4x411plateMaterialList13Url = "rolleTray4x411plateMaterialList13Url";
		private static String rolleTray4x411plateMaterialList14Url = "rolleTray4x411plateMaterialList14Url";
		private static String rolleTray4x411plateMaterialList15Url = "rolleTray4x411plateMaterialList15Url";
		private static String rolleTray4x411plateMaterialList16Url = "rolleTray4x411plateMaterialList16Url";
		private static String status = "status";
	}
}
/*
 * DROP TABLE IF EXISTS `rocel`.`tbl_rocel_rollerack1javamaterial`; CREATE TABLE
 * `rocel`.`tbl_rocel_rollerack1javamaterial` ( `rollerack1javaMaterialId`
 * int(10) unsigned NOT NULL auto_increment, `footcubesMaterialListUrl`
 * varchar(100) NOT NULL default '', `panelcubesMaterialListUrl` varchar(100)
 * NOT NULL default '', `hangerBar1BitmapFileMaterialUrl` varchar(100) NOT NULL
 * default '', `hangerBar2BitmapFileMaterialUrl` varchar(100) NOT NULL default
 * '', `rolleTray4x41plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x41plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x42plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x43plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x44plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x45plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x46plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x47plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x48plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x49plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x410plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList1Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList2Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList3Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList4Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList5Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList6Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList7Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList8Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList9Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList10Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList11Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList12Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList13Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList14Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList15Url` varchar(100) NOT NULL default '',
 * `rolleTray4x411plateMaterialList16Url` varchar(100) NOT NULL default '',
 * `status` int(10) unsigned zerofill NOT NULL default '0000000001', PRIMARY KEY
 * (`rollerack1javaMaterialId`) ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 */
