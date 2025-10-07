package com.fortunaglobal.model.dao;

import java.util.ArrayList;

import com.fortunaglobal.model.RoundRack1javaMaterial;

public interface RoundRack1javaMaterialDAO {

	RoundRack1javaMaterial addRoundRack1javaMaterial(
			RoundRack1javaMaterial roundRack1javaMaterial);

	void editRoundRack1javaMaterial(
			RoundRack1javaMaterial roundRack1javaMaterial);

	void deleteRoundRack1javaMaterial(
			RoundRack1javaMaterial roundRack1javaMaterial);

	int lastRoundRack1javaMaterial();

	RoundRack1javaMaterial getRoundRack1javaMaterial(
			int roundRack1javaMaterialId);

	ArrayList<RoundRack1javaMaterial> listRoundRack1javaMaterial(int objectType);
}
