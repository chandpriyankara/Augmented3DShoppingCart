package com.fortunaglobal.model;

import com.fortunaglobal.model.RolleRack1javaMaterial;

public class RolleRack1java extends JavaObject3D {

	private String rolleRack1java = "RolleRack1java";
	private RolleRack1javaMaterial rolleRack1javaMaterial = new RolleRack1javaMaterial();

	public void setRolleRack1java(String rolleRack1java) {
		this.rolleRack1java = rolleRack1java;
	}

	public String getRolleRack1java() {
		return rolleRack1java;
	}

	public void setRolleRack1javaMaterial(
			RolleRack1javaMaterial rolleRack1javaMaterial) {
		this.rolleRack1javaMaterial = rolleRack1javaMaterial;
	}

	public RolleRack1javaMaterial getRolleRack1javaMaterial() {
		return rolleRack1javaMaterial;
	}
}
