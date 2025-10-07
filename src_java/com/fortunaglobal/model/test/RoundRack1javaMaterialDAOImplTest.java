package com.fortunaglobal.model.test;

import com.fortunaglobal.model.RoundRack1javaMaterial;
import com.fortunaglobal.model.dao.RoundRack1javaMaterialDAO;
import com.fortunaglobal.model.dao.impl.mysql.RoundRack1javaMaterialDAOImpl;

import junit.framework.TestCase;

public class RoundRack1javaMaterialDAOImplTest extends TestCase {

	public void testAddRoundRack1javaMaterial() {
		RoundRack1javaMaterial roundRack1javaMaterial = new RoundRack1javaMaterial();
		RoundRack1javaMaterialDAO roundRack1javaMaterialDAO = new RoundRack1javaMaterialDAOImpl();

		roundRack1javaMaterial.setRoundRack1javaMaterialId(998);

		roundRack1javaMaterial
				.setCubesMaterialListUrl("setCubesMaterialListUrl");
		roundRack1javaMaterial
				.setCylinderBitmapFileMaterialUrl("setCylinderBitmapFileMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray11plateMaterialUrl("setRoundTray11plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray12plateMaterialUrl("setRoundTray12plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray13plateMaterialUrl("setRoundTray13plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray14plateMaterialUrl("setRoundTray14plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray15plateMaterialUrl("setRoundTray15plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray16plateMaterialUrl("setRoundTray16plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray17plateMaterialUrl("setRoundTray17plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray18plateMaterialUrl("setRoundTray18plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray19plateMaterialUrl("setRoundTray19plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray110plateMaterialUrl("setRoundTray110plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray111plateMaterialUrl("setRoundTray111plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray112plateMaterialUrl("setRoundTray112plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray113plateMaterialUrl("setRoundTray113plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray114plateMaterialUrl("setRoundTray114plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray115plateMaterialUrl("setRoundTray115plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray116plateMaterialUrl("setRoundTray116plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray117plateMaterialUrl("setRoundTray117plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray118plateMaterialUrl("setRoundTray118plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray119plateMaterialUrl("setRoundTray119plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray120plateMaterialUrl("setRoundTray120plateMaterialUrl");
		roundRack1javaMaterial
				.setRoundTray121plateMaterialUrl("setRoundTray121plateMaterialUrl");
		roundRack1javaMaterial
				.setTrayplateMaterialUrl("setTrayplateMaterialUrl");
		roundRack1javaMaterial.setStatus(17);

		RoundRack1javaMaterial roundRack1javaMaterialback = roundRack1javaMaterialDAO
				.addRoundRack1javaMaterial(roundRack1javaMaterial);

		System.out
				.println(roundRack1javaMaterialback.getCubesMaterialListUrl());
		System.out.println(roundRack1javaMaterialback
				.getCylinderBitmapFileMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundRack1javaMaterialId());
		System.out
				.println(roundRack1javaMaterialback.getCubesMaterialListUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray11plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray12plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray13plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray14plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray15plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray16plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray17plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray18plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray19plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray110plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray111plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray112plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray113plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray114plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray115plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray116plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray117plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray118plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray119plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray120plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray121plateMaterialUrl());
		System.out
				.println(roundRack1javaMaterialback.getTrayplateMaterialUrl());
	}

	public void testDeleteRoundRack1javaMaterial() {
		fail("Not yet implemented");
	}

	public void testEditRoundRack1javaMaterial() {
		RoundRack1javaMaterial roundRack1javaMaterial = new RoundRack1javaMaterial();
		RoundRack1javaMaterialDAO roundRack1javaMaterialDAO = new RoundRack1javaMaterialDAOImpl();

		roundRack1javaMaterial.setCubesMaterialListUrl(roundRack1javaMaterial
				.getCubesMaterialListUrl());
		roundRack1javaMaterial
				.setCylinderBitmapFileMaterialUrl(roundRack1javaMaterial
						.getCylinderBitmapFileMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray11plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray11plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray12plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray12plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray13plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray13plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray14plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray14plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray15plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray15plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray16plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray16plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray17plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray17plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray18plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray18plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray19plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray19plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray110plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray110plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray111plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray111plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray112plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray112plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray113plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray113plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray114plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray114plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray115plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray115plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray116plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray116plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray117plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray117plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray118plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray118plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray119plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray119plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray120plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray120plateMaterialUrl());
		roundRack1javaMaterial
				.setRoundTray121plateMaterialUrl(roundRack1javaMaterial
						.getRoundTray121plateMaterialUrl());
		roundRack1javaMaterial.setTrayplateMaterialUrl(roundRack1javaMaterial
				.getTrayplateMaterialUrl());
		roundRack1javaMaterial.setStatus(15);

		roundRack1javaMaterial
				.setRoundRack1javaMaterialId(roundRack1javaMaterialDAO
						.lastRoundRack1javaMaterial());

		roundRack1javaMaterialDAO
				.editRoundRack1javaMaterial(roundRack1javaMaterial);
	}

	public void testGetRoundRack1javaMaterial() {
		RoundRack1javaMaterialDAO roundRack1javaMaterialDAO = new RoundRack1javaMaterialDAOImpl();

		RoundRack1javaMaterial roundRack1javaMaterialback = roundRack1javaMaterialDAO
				.getRoundRack1javaMaterial(1);

		System.out
				.println(roundRack1javaMaterialback.getCubesMaterialListUrl());
		System.out.println(roundRack1javaMaterialback
				.getCylinderBitmapFileMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundRack1javaMaterialId());
		System.out
				.println(roundRack1javaMaterialback.getCubesMaterialListUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray11plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray12plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray13plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray14plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray15plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray16plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray17plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray18plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray19plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray110plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray111plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray112plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray113plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray114plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray115plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray116plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray117plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray118plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray119plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray120plateMaterialUrl());
		System.out.println(roundRack1javaMaterialback
				.getRoundTray121plateMaterialUrl());
		System.out
				.println(roundRack1javaMaterialback.getTrayplateMaterialUrl());
	}

	public void testLastRoundRack1javaMaterial() {
		RoundRack1javaMaterialDAO roundRack1javaMaterialDAO = new RoundRack1javaMaterialDAOImpl();
		System.out
				.println("roundRack1javaMaterialDAO.lastRoundRack1javaMaterial(): "
						+ roundRack1javaMaterialDAO
								.lastRoundRack1javaMaterial());
	}

	public void testListRoundRack1javaMaterial() {
		fail("Not yet implemented");
	}
}
