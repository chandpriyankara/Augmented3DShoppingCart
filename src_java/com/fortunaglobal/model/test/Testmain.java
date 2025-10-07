package com.fortunaglobal.model.test;

//import com.fortunaglobal.model.JavaObject3D;

//import com.fortunaglobal.model.ComplexRIA;
import com.fortunaglobal.model.RolleRack1javaMaterial;
//import com.fortunaglobal.model.RoundRack1java; //import com.fortunaglobal.model.dao.RoundRack1javaDAO;
//import com.fortunaglobal.model.dto.ComplexRIADTO;
import com.fortunaglobal.model.dao.RolleRack1javaMaterialDAO;
import com.fortunaglobal.model.dao.impl.mysql.RolleRack1javaMaterialDAOImpl;
//import com.fortunaglobal.model.dto.RoundRack1javaDTO;

//import com.fortunaglobal.model.dao.JavaObject3DDTO;
//import com.fortunaglobal.model.dao.RoundRack1javaDTO;
//import com.fortunaglobal.model.dao.impl.mysql.JavaObject3DDTOImpl;

public class Testmain {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// RoundRack1java roundRack1java = new RoundRack1java();
		// roundRack1java.setShowroom(5);
		// RoundRack1javaDTO roundRack1javaDAO = new RoundRack1javaDTO();
		// roundRack1java = roundRack1javaDAO.addRoundRack1java(roundRack1java);
		// // RoundRack1java roundRack1java = new RoundRack1java();
		// // JavaObject3DDTO javaObject3DDTO = new JavaObject3DDTOImpl();
		//
		// // roundRack1java = javaObject3DDTO.getJavaObject3D(42);
		//
		// System.out.println(roundRack1java.getName());
		// System.out.println(roundRack1java.getObject3DId());
		// System.out.println(roundRack1java.getObject3DType());
		// System.out.println(roundRack1java.getRotationX());
		// System.out.println(roundRack1java.getRotationY());
		// System.out.println(roundRack1java.getRotationZ());
		// System.out.println(roundRack1java.getScale());
		// System.out.println(roundRack1java.getStatus());
		// System.out.println(roundRack1java.getX());
		// System.out.println(roundRack1java.getY());
		// System.out.println(roundRack1java.getMaterialId());
		// System.out.println(roundRack1java.getroundRack1javaMaterial()
		// .getRoundRack1javaMaterialId());

		// / RoundRack1javaDTO RoundRack1javaDTO = new RoundRack1javaDTO();
		// System.out.println(RoundRack1javaDTO.addRoundRack1java(roundRack1java).getObject3DId());

		// ComplexRIADTO complexRIADTO = new ComplexRIADTO();
		// ComplexRIA complexRIA = complexRIADTO.sendToClient(5);
		// complexRIA.listExistingRoundRack1java = new
		// ArrayList<RoundRack1java>();
		// for (RoundRack1java roundRack1java :
		// complexRIA.listExistingRoundRack1java) {
		// System.out.println(roundRack1java.getName());
		// System.out.println(roundRack1java.getObject3DId());
		// System.out.println(roundRack1java.getObject3DType());
		// System.out.println(roundRack1java.getRotationX());
		// System.out.println(roundRack1java.getRotationY());
		// System.out.println(roundRack1java.getRotationZ());
		// System.out.println(roundRack1java.getScale());
		// System.out.println(roundRack1java.getStatus());
		// System.out.println(roundRack1java.getX());
		// System.out.println(roundRack1java.getY());
		// System.out.println(roundRack1java.getZ());
		// System.out.println();
		//
		// roundRack1java.setName(roundRack1java.getName() + 1);
		// roundRack1java.setObject3DId(1);
		// roundRack1java
		// .setObject3DType(roundRack1java.getObject3DType() + 1);
		// roundRack1java.setRotationX(roundRack1java.getRotationX() + 1);
		// roundRack1java.setRotationY(roundRack1java.getRotationY() + 1);
		// roundRack1java.setRotationZ(roundRack1java.getRotationZ() + 1);
		// roundRack1java.setScale(roundRack1java.getScale() + 1);
		// roundRack1java.setStatus(roundRack1java.getStatus() + 1);
		// roundRack1java.setX(roundRack1java.getX() + 1);
		// roundRack1java.setY(roundRack1java.getY() + 1);
		// roundRack1java.setZ(roundRack1java.getZ() + 1);

		// System.out.println(roundRack1java.getName());
		// System.out.println(roundRack1java.getObject3DId());
		// System.out.println(roundRack1java.getObject3DType());
		// System.out.println(roundRack1java.getRotationX());
		// System.out.println(roundRack1java.getRotationY());
		// System.out.println(roundRack1java.getRotationZ());
		// System.out.println(roundRack1java.getScale());
		// System.out.println(roundRack1java.getStatus() + 1000);
		// System.out.println(roundRack1java.getX());
		// System.out.println(roundRack1java.getY());
		// System.out.println(roundRack1java.getZ());
		// System.out.println();

		// complexRIA.listExistingRoundRack1java.add(roundRack1java);

		// complexRIADTO.sendToClient(complexRIA);

		// complexRIADTO.sendToServer(complexRIA);

		RolleRack1javaMaterial rolleRack1javaMaterial = new RolleRack1javaMaterial();
		RolleRack1javaMaterialDAO rolleRack1javaMaterialDAO = new RolleRack1javaMaterialDAOImpl();
		rolleRack1javaMaterial = rolleRack1javaMaterialDAO.addRolleRack1javaMaterial(rolleRack1javaMaterial);
	}
}
