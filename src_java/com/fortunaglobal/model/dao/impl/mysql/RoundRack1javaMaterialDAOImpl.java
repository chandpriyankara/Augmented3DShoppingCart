package com.fortunaglobal.model.dao.impl.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.fortunaglobal.model.RoundRack1javaMaterial;
import com.fortunaglobal.model.dao.RoundRack1javaMaterialDAO;
import com.fortunaglobal.model.settings.RocelDBConnect;
import com.fortunaglobal.model.settings.RocelTables;
import com.fortunaglobal.model.settings.Tbl_rocel3dobjectsStatus;

public class RoundRack1javaMaterialDAOImpl implements RoundRack1javaMaterialDAO {
	private static Connection connection = null;

	@Override
	public RoundRack1javaMaterial addRoundRack1javaMaterial(
			RoundRack1javaMaterial roundRack1javaMaterial) {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create a database
		Statement query = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			return roundRack1javaMaterial;
		}

		String sql = "INSERT INTO "
				+ RocelTables.tbl_rocel_roundrack1javamaterial
				+ "( "
				+ tbl_rocel_roundrack1javamaterialColumns.roundRack1javaMaterialname
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.cubesMaterialListUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.cylinderBitmapFileMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.trayplateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray11plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray12plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray13plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray14plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray15plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray16plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray17plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray18plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray19plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray110plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray111plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray112plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray113plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray114plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray115plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray116plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray117plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray118plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray119plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray120plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray121plateMaterialUrl
				+ ", " + tbl_rocel_roundrack1javamaterialColumns.status
				+ ") VALUES( '"
				+ roundRack1javaMaterial.getRoundRack1javaMaterialname() 
				+ "', '"
				+ roundRack1javaMaterial.getCubesMaterialListUrl() 
				+ "', '"
				+ roundRack1javaMaterial.getCylinderBitmapFileMaterialUrl()
				+ "', '" 
				+ roundRack1javaMaterial.getTrayplateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray11plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray12plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray13plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray14plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray15plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray16plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray17plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray18plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray19plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray110plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray111plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray112plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray113plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray114plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray115plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray116plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray117plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray118plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray119plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray120plateMaterialUrl()
				+ "', '"
				+ roundRack1javaMaterial.getRoundTray121plateMaterialUrl()
				+ "', "

				+ roundRack1javaMaterial.getStatus()

				+ ")";
		System.out.println(sql);
		// log.info(sql);
		try {
			query.executeUpdate(sql);
			roundRack1javaMaterial
					.setRoundRack1javaMaterialId(lastRoundRack1javaMaterial());
			System.out.println(roundRack1javaMaterial
					.getRoundRack1javaMaterialId());
			return roundRack1javaMaterial;
		} catch (SQLException sqle) {
			System.out
					.println("Could not retrieve data@addRoundRack1javaMaterial: "
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
	public void deleteRoundRack1javaMaterial(
			RoundRack1javaMaterial roundRack1javaMaterial) {
		// TODO Auto-generated method stub

	}

	@Override
	public void editRoundRack1javaMaterial(
			RoundRack1javaMaterial roundRack1javaMaterial) {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create connection
		Statement query = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			// return roundRack1javaMaterial;
		}
		String sql = "UPDATE "
				+ RocelTables.tbl_rocel_roundrack1javamaterial
				+ " SET "
				+ tbl_rocel_roundrack1javamaterialColumns.roundRack1javaMaterialname
				+ " = '"
				+ roundRack1javaMaterial.getRoundRack1javaMaterialname()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.cubesMaterialListUrl
				+ " = '"
				+ roundRack1javaMaterial.getCubesMaterialListUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.cylinderBitmapFileMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getCylinderBitmapFileMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.trayplateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getTrayplateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray11plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray11plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray12plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray12plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray13plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray13plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray14plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray14plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray15plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray15plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray16plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray16plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray17plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray17plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray18plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray18plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray19plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray19plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray110plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray110plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray111plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray111plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray112plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray112plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray113plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray113plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray114plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray114plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray115plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray115plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray116plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray116plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray117plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray117plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray118plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray118plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray119plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray119plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray120plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray120plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray121plateMaterialUrl
				+ " = '"
				+ roundRack1javaMaterial.getRoundTray121plateMaterialUrl()
				+ "', "
				+ tbl_rocel_roundrack1javamaterialColumns.status
				+ " = "
				+ roundRack1javaMaterial.getStatus()
				+ " WHERE "
				+ tbl_rocel_roundrack1javamaterialColumns.roundrack1javaMaterialId
				+ " = " + roundRack1javaMaterial.getRoundRack1javaMaterialId();

		System.out.println(sql);
		// log.info(sql);
		try {
			query.executeUpdate(sql);

			// RoundRack1javaMaterial =
			// this.getRoundRack1javaMaterial(RoundRack1javaMaterial.getObject3DId());
			// return RoundRack1javaMaterial;
		} catch (SQLException sqle) {
			System.out
					.println("Could not retrieve data@addRoundRack1javaMaterial: "
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
	public RoundRack1javaMaterial getRoundRack1javaMaterial(
			int roundRack1javaMaterialId) {
		RoundRack1javaMaterial roundRack1javaMaterial = new RoundRack1javaMaterial();
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
				+ tbl_rocel_roundrack1javamaterialColumns.roundrack1javaMaterialId
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundRack1javaMaterialname
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.cubesMaterialListUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.cylinderBitmapFileMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.trayplateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray11plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray12plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray13plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray14plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray15plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray16plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray17plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray18plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray19plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray110plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray111plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray112plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray113plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray114plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray115plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray116plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray117plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray118plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray119plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray120plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.roundTray121plateMaterialUrl
				+ ", "
				+ tbl_rocel_roundrack1javamaterialColumns.status
				+ " FROM "
				+ RocelTables.tbl_rocel_roundrack1javamaterial
				+ " WHERE "
				+ tbl_rocel_roundrack1javamaterialColumns.roundrack1javaMaterialId
				+ " = " + roundRack1javaMaterialId;

		System.out.println(sql);
		// log.info(sql);
		try {
			if (query.execute(sql)) {
				resultSet = query.getResultSet();
				if (resultSet.next()) {
					roundRack1javaMaterial
							.setRoundRack1javaMaterialname(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundRack1javaMaterialname));
					roundRack1javaMaterial
							.setCubesMaterialListUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.cubesMaterialListUrl));
					roundRack1javaMaterial
							.setCylinderBitmapFileMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.cylinderBitmapFileMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray11plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray11plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray12plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray12plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray13plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray13plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray14plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray14plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray15plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray15plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray16plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray16plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray17plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray17plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray18plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray18plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray19plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray19plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray110plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray110plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray111plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray111plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray112plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray112plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray113plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray113plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray114plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray114plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray115plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray115plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray116plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray116plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray117plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray117plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray118plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray118plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray119plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray119plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray120plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray120plateMaterialUrl));
					roundRack1javaMaterial
							.setRoundTray121plateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.roundTray121plateMaterialUrl));
					roundRack1javaMaterial
							.setTrayplateMaterialUrl(resultSet
									.getString(tbl_rocel_roundrack1javamaterialColumns.trayplateMaterialUrl));
					roundRack1javaMaterial
							.setStatus(resultSet
									.getInt(tbl_rocel_roundrack1javamaterialColumns.status));
					roundRack1javaMaterial
							.setRoundRack1javaMaterialId(resultSet
									.getInt(tbl_rocel_roundrack1javamaterialColumns.roundrack1javaMaterialId));
				}
				return roundRack1javaMaterial;
			} else {
				throw new SQLException("No data in the Table");
			}
		} catch (SQLException sqle) {
			System.out
					.println("Could not retrieve data@lastRoundRack1javaMaterial: "
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
	public int lastRoundRack1javaMaterial() {
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
				+ tbl_rocel_roundrack1javamaterialColumns.roundrack1javaMaterialId
				+ ") as last_id from "
				+ RocelTables.tbl_rocel_roundrack1javamaterial + " WHERE "
				+ tbl_rocel_roundrack1javamaterialColumns.status + " != "
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
					.println("Could not retrieve data@lastRoundRack1javaMaterial: "
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
	public ArrayList<RoundRack1javaMaterial> listRoundRack1javaMaterial(
			int objectType) {
		// TODO Auto-generated method stub
		return null;
	}

	private static class tbl_rocel_roundrack1javamaterialColumns {
		private static String roundrack1javaMaterialId = "roundrack1javaMaterialId";
		private static String cubesMaterialListUrl = "cubesMaterialListUrl";
		private static String cylinderBitmapFileMaterialUrl = "cylinderBitmapFileMaterialUrl";
		private static String trayplateMaterialUrl = "trayplateMaterialUrl";
		private static String roundRack1javaMaterialname = "roundRack1javaMaterialname";
		private static String roundTray11plateMaterialUrl = "roundTray11plateMaterialUrl";
		private static String roundTray12plateMaterialUrl = "roundTray12plateMaterialUrl";
		private static String roundTray13plateMaterialUrl = "roundTray13plateMaterialUrl";
		private static String roundTray14plateMaterialUrl = "roundTray14plateMaterialUrl";
		private static String roundTray15plateMaterialUrl = "roundTray15plateMaterialUrl";
		private static String roundTray16plateMaterialUrl = "roundTray16plateMaterialUrl";
		private static String roundTray17plateMaterialUrl = "roundTray17plateMaterialUrl";
		private static String roundTray18plateMaterialUrl = "roundTray18plateMaterialUrl";
		private static String roundTray19plateMaterialUrl = "roundTray19plateMaterialUrl";
		private static String roundTray110plateMaterialUrl = "roundTray110plateMaterialUrl";
		private static String roundTray111plateMaterialUrl = "roundTray111plateMaterialUrl";
		private static String roundTray112plateMaterialUrl = "roundTray112plateMaterialUrl";
		private static String roundTray113plateMaterialUrl = "roundTray113plateMaterialUrl";
		private static String roundTray114plateMaterialUrl = "roundTray114plateMaterialUrl";
		private static String roundTray115plateMaterialUrl = "roundTray115plateMaterialUrl";
		private static String roundTray116plateMaterialUrl = "roundTray116plateMaterialUrl";
		private static String roundTray117plateMaterialUrl = "roundTray117plateMaterialUrl";
		private static String roundTray118plateMaterialUrl = "roundTray118plateMaterialUrl";
		private static String roundTray119plateMaterialUrl = "roundTray119plateMaterialUrl";
		private static String roundTray120plateMaterialUrl = "roundTray120plateMaterialUrl";
		private static String roundTray121plateMaterialUrl = "roundTray121plateMaterialUrl";
		private static String status = "status";
	}
}
/*
 * DROP TABLE IF EXISTS `rocel`.`tbl_rocel_roundrack1javamaterial`; CREATE TABLE
 * `rocel`.`tbl_rocel_roundrack1javamaterial` ( `roundrack1javaMaterialId`
 * int(10) unsigned NOT NULL auto_increment, `cubesMaterialListUrl` varchar(100)
 * NOT NULL default '', `cylinderBitmapFileMaterialUrl` varchar(100) NOT NULL
 * default '', `trayplateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray11plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray12plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray13plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray14plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray15plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray16plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray17plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray18plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray19plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray110plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray111plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray112plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray113plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray114plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray115plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray116plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray117plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray118plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray119plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray120plateMaterialUrl` varchar(100) NOT NULL default '',
 * `roundTray121plateMaterialUrl` varchar(100) NOT NULL default '', `status`
 * int(10) unsigned zerofill NOT NULL default '0000000001', PRIMARY KEY
 * (`roundrack1javaMaterialId`) ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 */
