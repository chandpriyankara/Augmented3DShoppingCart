package com.fortunaglobal.model.dao.impl.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.fortunaglobal.model.JavaObject3D;
import com.fortunaglobal.model.dao.JavaObject3DDAO;
import com.fortunaglobal.model.settings.RocelDBConnect;
import com.fortunaglobal.model.settings.RocelTables;
import com.fortunaglobal.model.settings.Tbl_rocel3dobjectsStatus;

public class JavaObject3DDAOImpl implements JavaObject3DDAO {

	// private static Logger log = Logger.getLogger(Log4Fortuna.class);
	private static Connection connection = null;

	private int positiveAngle(int angle) {
		if (angle < 0)
			return angle += 360;
		else if (angle >= 360)
			return angle -= 360;
		else
			return angle;
	}

	private int posotiveDistance(int xyz) {
		if (xyz < 0)
			return -xyz;
		else
			return xyz;
	}

	@Override
	public JavaObject3D addJavaObject3D(JavaObject3D javaObject3D) {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create a database
		Statement query = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			return javaObject3D;
		}
		String sql = "INSERT INTO " + RocelTables.tbl_rocel_3dobjects + "( "
		+ tbl_rocel3dobjectsColumns.object3DType + ", "
		+ tbl_rocel3dobjectsColumns.x + ", "
		+ tbl_rocel3dobjectsColumns.y + ", "
		+ tbl_rocel3dobjectsColumns.z + ", "
		+ tbl_rocel3dobjectsColumns.rotationX + ", "
		+ tbl_rocel3dobjectsColumns.rotationY + ", "
		+ tbl_rocel3dobjectsColumns.rotationZ + ", "
		+ tbl_rocel3dobjectsColumns.scale + ", "
		+ tbl_rocel3dobjectsColumns.name + ", "
		+ tbl_rocel3dobjectsColumns.showroom + ", "
		+ tbl_rocel3dobjectsColumns.materialId + ", "
		+ tbl_rocel3dobjectsColumns.status + ") VALUES( "
		+ javaObject3D.getObject3DType() + ", "
		+ posotiveDistance(javaObject3D.getX()) + ", "
		+ posotiveDistance(javaObject3D.getY()) + ", "
		+ posotiveDistance(javaObject3D.getZ()) + ", "
		+ positiveAngle(javaObject3D.getRotationX()) + ", "
		+ positiveAngle(javaObject3D.getRotationY()) + ", "
		+ positiveAngle(javaObject3D.getRotationZ()) + ", "
		+ javaObject3D.getScale() + ", '" + javaObject3D.getName()
		+ "', " + javaObject3D.getShowroom() + ", "
		+ javaObject3D.getMaterialId() + ", "
		+ Tbl_rocel3dobjectsStatus.newlyadded + ")";
		System.out.println(sql);
		// log.info(sql);
		try {
			query.executeUpdate(sql);
			javaObject3D.setObject3DId(lastJavaObject3D());
			return javaObject3D;
		} catch (SQLException sqle) {
			System.out.println("Could not retrieve data@addJavaObject3D: "
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
	public void deleteJavaObject3D(JavaObject3D javaObject3D) {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create connection
		Statement query = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			// return javaObject3D;
		}
		String sql = "UPDATE " + RocelTables.tbl_rocel_3dobjects + " SET "
		+ tbl_rocel3dobjectsColumns.status + " = "
		+ Tbl_rocel3dobjectsStatus.deleted + " WHERE "
		+ tbl_rocel3dobjectsColumns.object3DId + "="
		+ javaObject3D.getObject3DId();
		System.out.println(sql);
		// log.info(sql);
		try {
			query.executeUpdate(sql);
			javaObject3D.setStatus(Integer
					.valueOf(Tbl_rocel3dobjectsStatus.deleted));
			// return javaObject3D;
		} catch (SQLException sqle) {
			System.out.println("Could not retrieve data@addJavaObject3D: "
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
	public void editJavaObject3D(JavaObject3D javaObject3D) {
		new RocelDBConnect();
		connection = RocelDBConnect.Connect(connection);// create connection
		Statement query = null;
		try {
			query = connection.createStatement();
		} catch (SQLException sqle) {
			System.out.println("Could not create create statement:\n"
					+ sqle.toString());
			// return javaObject3D;
		}
		System.out.println("###editJavaObject3D: " + javaObject3D.getShowroom());
		String sql = "UPDATE " + RocelTables.tbl_rocel_3dobjects + " SET "
		+ tbl_rocel3dobjectsColumns.object3DType + " = "
		+ javaObject3D.getObject3DType() + ", "
		+ tbl_rocel3dobjectsColumns.x + " = "
		+ posotiveDistance(javaObject3D.getX()) + ", "
		+ tbl_rocel3dobjectsColumns.y + " = "
		+ posotiveDistance(javaObject3D.getY()) + ", "
		+ tbl_rocel3dobjectsColumns.z + " = "
		+ posotiveDistance(javaObject3D.getZ()) + ", "
		+ tbl_rocel3dobjectsColumns.rotationX + " = "
		+ positiveAngle(javaObject3D.getRotationX()) + ", "
		+ tbl_rocel3dobjectsColumns.rotationY + " = "
		+ positiveAngle(javaObject3D.getRotationY()) + ", "
		+ tbl_rocel3dobjectsColumns.rotationZ + " = "
		+ positiveAngle(javaObject3D.getRotationZ()) + ", "
		+ tbl_rocel3dobjectsColumns.scale + " = "
		+ javaObject3D.getScale() + ", "
		+ tbl_rocel3dobjectsColumns.name + " = '"
		+ javaObject3D.getName() + "', "
		+ tbl_rocel3dobjectsColumns.showroom + " = "
		+ javaObject3D.getShowroom() + ", "
		+ tbl_rocel3dobjectsColumns.materialId + " = "
		+ javaObject3D.getMaterialId() + ", "
		+ tbl_rocel3dobjectsColumns.status + " = "
		+ Tbl_rocel3dobjectsStatus.updated + " " + " WHERE "
		+ tbl_rocel3dobjectsColumns.object3DId + " = "
		+ javaObject3D.getObject3DId();

		System.out.println(sql);
		// log.info(sql);
		try {
			query.executeUpdate(sql);

			// javaObject3D =
			// this.getJavaObject3D(javaObject3D.getObject3DId());
			// return javaObject3D;
		} catch (SQLException sqle) {
			System.out.println("Could not retrieve data@addJavaObject3D: "
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
	public int lastJavaObject3D() {
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

		String sql = "select MAX(" + tbl_rocel3dobjectsColumns.object3DId
		+ ") as last_id from " + RocelTables.tbl_rocel_3dobjects
		+ " WHERE " + tbl_rocel3dobjectsColumns.status + " = "
		+ Tbl_rocel3dobjectsStatus.newlyadded;
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
			System.out.println("Could not retrieve data@lastJavaObject3D: "
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
	public JavaObject3D getJavaObject3D(int object3DId) {
		JavaObject3D javaObject3D = new JavaObject3D();
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

		String sql = "SELECT " + tbl_rocel3dobjectsColumns.object3DId + ", "
		+ tbl_rocel3dobjectsColumns.object3DType + ", "
		+ tbl_rocel3dobjectsColumns.showroom + ", "
		+ tbl_rocel3dobjectsColumns.x + ", "
		+ tbl_rocel3dobjectsColumns.y + ", "
		+ tbl_rocel3dobjectsColumns.z + ", "
		+ tbl_rocel3dobjectsColumns.rotationX + ", "
		+ tbl_rocel3dobjectsColumns.rotationY + ", "
		+ tbl_rocel3dobjectsColumns.rotationZ + ", "
		+ tbl_rocel3dobjectsColumns.scale + ", "
		+ tbl_rocel3dobjectsColumns.name + ", "
		+ tbl_rocel3dobjectsColumns.materialId + ", "
		+ tbl_rocel3dobjectsColumns.status + " FROM "
		+ RocelTables.tbl_rocel_3dobjects + " WHERE "
		+ tbl_rocel3dobjectsColumns.object3DId + " = " + object3DId
		+ " AND " + tbl_rocel3dobjectsColumns.status + " != "
		+ Tbl_rocel3dobjectsStatus.deleted;
		System.out.println(sql);
		// log.info(sql);
		try {
			if (query.execute(sql)) {
				resultSet = query.getResultSet();
				if (resultSet.next()) {
					javaObject3D.setObject3DId(resultSet
							.getInt(tbl_rocel3dobjectsColumns.object3DId));
					javaObject3D.setShowroom(resultSet
							.getInt(tbl_rocel3dobjectsColumns.showroom));
					javaObject3D.setObject3DType(resultSet
							.getInt(tbl_rocel3dobjectsColumns.object3DType));
					javaObject3D.setX(resultSet
							.getInt(tbl_rocel3dobjectsColumns.x));
					javaObject3D.setY(resultSet
							.getInt(tbl_rocel3dobjectsColumns.y));
					javaObject3D.setZ(resultSet
							.getInt(tbl_rocel3dobjectsColumns.z));
					javaObject3D.setRotationX(resultSet
							.getInt(tbl_rocel3dobjectsColumns.rotationX));
					javaObject3D.setRotationY(resultSet
							.getInt(tbl_rocel3dobjectsColumns.rotationY));
					javaObject3D.setRotationZ(resultSet
							.getInt(tbl_rocel3dobjectsColumns.rotationZ));
					javaObject3D.setScale(resultSet
							.getInt(tbl_rocel3dobjectsColumns.scale));
					javaObject3D.setName(resultSet
							.getString(tbl_rocel3dobjectsColumns.name));
					javaObject3D.setStatus(resultSet
							.getInt(tbl_rocel3dobjectsColumns.status));
					javaObject3D.setMaterialId(resultSet
							.getInt(tbl_rocel3dobjectsColumns.materialId));
				}
				return javaObject3D;
			} else {
				throw new SQLException("No data in the Table");
			}
		} catch (SQLException sqle) {
			System.out.println("Could not retrieve data@lastJavaObject3D: "
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
	public ArrayList<JavaObject3D> listJavaObject3D(int objectType) {
		ArrayList<JavaObject3D> listJavaObject3D = new ArrayList<JavaObject3D>();
		JavaObject3D javaObject3D = null;
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

		String sql = "SELECT " + tbl_rocel3dobjectsColumns.object3DId + ", "
		+ tbl_rocel3dobjectsColumns.object3DType + ", "
		+ tbl_rocel3dobjectsColumns.showroom + ", "
		+ tbl_rocel3dobjectsColumns.x + ", "
		+ tbl_rocel3dobjectsColumns.y + ", "
		+ tbl_rocel3dobjectsColumns.z + ", "
		+ tbl_rocel3dobjectsColumns.rotationX + ", "
		+ tbl_rocel3dobjectsColumns.rotationY + ", "
		+ tbl_rocel3dobjectsColumns.rotationZ + ", "
		+ tbl_rocel3dobjectsColumns.scale + ", "
		+ tbl_rocel3dobjectsColumns.name + ", "
		+ tbl_rocel3dobjectsColumns.materialId + ", "
		+ tbl_rocel3dobjectsColumns.status + " FROM "
		+ RocelTables.tbl_rocel_3dobjects + " WHERE "
		+ tbl_rocel3dobjectsColumns.status + " != "
		+ Tbl_rocel3dobjectsStatus.deleted + " AND "
		+ tbl_rocel3dobjectsColumns.object3DType + " = " + objectType;

		System.out.println(sql);
		// log.info(sql);
		try {
			if (query.execute(sql)) {
				resultSet = query.getResultSet();
				while (resultSet.next()) {
					javaObject3D = new JavaObject3D();

					javaObject3D.setObject3DId(resultSet
							.getInt(tbl_rocel3dobjectsColumns.object3DId));
					javaObject3D.setShowroom(resultSet
							.getInt(tbl_rocel3dobjectsColumns.showroom));
					javaObject3D.setObject3DType(resultSet
							.getInt(tbl_rocel3dobjectsColumns.object3DType));
					javaObject3D.setX(resultSet
							.getInt(tbl_rocel3dobjectsColumns.x));
					javaObject3D.setY(resultSet
							.getInt(tbl_rocel3dobjectsColumns.y));
					javaObject3D.setZ(resultSet
							.getInt(tbl_rocel3dobjectsColumns.z));
					javaObject3D.setRotationX(resultSet
							.getInt(tbl_rocel3dobjectsColumns.rotationX));
					javaObject3D.setRotationY(resultSet
							.getInt(tbl_rocel3dobjectsColumns.rotationY));
					javaObject3D.setRotationZ(resultSet
							.getInt(tbl_rocel3dobjectsColumns.rotationZ));
					javaObject3D.setScale(resultSet
							.getInt(tbl_rocel3dobjectsColumns.scale));
					javaObject3D.setName(resultSet
							.getString(tbl_rocel3dobjectsColumns.name));
					javaObject3D.setStatus(resultSet
							.getInt(tbl_rocel3dobjectsColumns.status));
					javaObject3D.setMaterialId(resultSet
							.getInt(tbl_rocel3dobjectsColumns.materialId));

					listJavaObject3D.add(javaObject3D);
				}
				return listJavaObject3D;
			} else {
				throw new SQLException("No data in the Table");
			}
		} catch (SQLException sqle) {
			System.out.println("Could not retrieve data@lastJavaObject3D: "
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

	private static class tbl_rocel3dobjectsColumns {
		private static String object3DId = "object3DId";
		private static String object3DType = "object3DType";
		private static String showroom = "showroom";
		private static String x = "x";
		private static String y = "y";
		private static String z = "z";
		private static String rotationX = "rotationX";
		private static String rotationY = "rotationY";
		private static String rotationZ = "rotationZ";
		private static String scale = "scale";
		private static String name = "name";
		private static String status = "status";
		private static String materialId = "materialId";
	}
}
/*
 * DROP TABLE IF EXISTS `rocel`.`tbl_rocel_3dobjects`;
CREATE TABLE  `rocel`.`tbl_rocel_3dobjects` (
  `object3DId` int(10) unsigned NOT NULL auto_increment COMMENT 'identifies the individual object',
  `object3DType` int(10) unsigned NOT NULL default '0' COMMENT 'identifies the object as the root parend 3D\r\nobject type',
  `x` int(10) unsigned NOT NULL default '1000' COMMENT 'position',
  `y` int(10) unsigned NOT NULL default '1000' COMMENT 'position',
  `z` int(10) unsigned NOT NULL default '1000' COMMENT 'position',
  `rotationX` int(10) unsigned NOT NULL default '0' COMMENT 'Rotation',
  `rotationY` int(10) unsigned NOT NULL default '0' COMMENT 'Rotation',
  `rotationZ` int(10) unsigned NOT NULL default '0' COMMENT 'Rotation',
  `scale` int(10) unsigned zerofill NOT NULL default '0000000001' COMMENT 'object scale to the canvas',
  `name` varchar(45) NOT NULL default 'defaultName' COMMENT ' dynamic name of the object',
  `status` int(10) unsigned NOT NULL default '2' COMMENT '[active=1,deleted=0,hidden=2,new=3,changed=4]',
  `showroom` int(10) unsigned NOT NULL default '0',
  `materialId` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`object3DId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='reference objects on the application canvas';
 * */
