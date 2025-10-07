package com.fortunaglobal.model;

import java.util.ArrayList;

/**
 * this class represents the total object that is to transfer from back end to
 * the front end to avoid the transfer of smaller amount of data asynchronously
 * This ComplexRIA is user oriented.It is the main structure which has all the
 * details of the privileges and data that is accessible by the particular user
 **/
public class ComplexRIA {
	/**
	 * this class need to have all the data that is required
	 */
	public String uSerMessage = new String("Loaded Successfully!");

	public int showRoomId = 0;

	public ArrayList<RoundRack1java> listExistingRoundRack1java = new ArrayList<RoundRack1java>();
	public ArrayList<RoundRack1java> listNewRoundRack1java = new ArrayList<RoundRack1java>();
	public ArrayList<RoundRack1java> listDeletedRoundRack1java = new ArrayList<RoundRack1java>();

	public ArrayList<DynamicRack1java> listExistingDynamicRack1java = new ArrayList<DynamicRack1java>();
	public ArrayList<DynamicRack1java> listNewDynamicRack1java = new ArrayList<DynamicRack1java>();
	public ArrayList<DynamicRack1java> listDeletedDynamicRack1java = new ArrayList<DynamicRack1java>();

	public ArrayList<RolleRack1java> listExistingRolleRack1java = new ArrayList<RolleRack1java>();
	public ArrayList<RolleRack1java> listNewRolleRack1java = new ArrayList<RolleRack1java>();
	public ArrayList<RolleRack1java> listDeletedRolleRack1java = new ArrayList<RolleRack1java>();
}