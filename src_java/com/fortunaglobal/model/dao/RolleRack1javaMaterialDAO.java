package com.fortunaglobal.model.dao;

import java.util.ArrayList;

import com.fortunaglobal.model.RolleRack1javaMaterial;

public interface RolleRack1javaMaterialDAO {

	RolleRack1javaMaterial addRolleRack1javaMaterial(
			RolleRack1javaMaterial rolleRack1javaMaterial);

	void editRolleRack1javaMaterial(
			RolleRack1javaMaterial rolleRack1javaMaterial);

	void deleteRolleRack1javaMaterial(
			RolleRack1javaMaterial rolleRack1javaMaterial);

	int lastRolleRack1javaMaterial();

	RolleRack1javaMaterial getRolleRack1javaMaterial(
			int rolleRack1javaMaterialId);

	ArrayList<RolleRack1javaMaterial> listRolleRack1javaMaterial(int objectType);
}
