package com.fortunaglobal.model.dto;

import com.fortunaglobal.model.ComplexRIA;
import com.fortunaglobal.model.DynamicRack1java;
import com.fortunaglobal.model.RolleRack1java;
import com.fortunaglobal.model.RoundRack1java;
import com.fortunaglobal.model.settings.Tbl_rocel3dobjectsStatus;

public class ComplexRIADTO {

	private RoundRack1javaDTO roundRack1javaDTO;
	private RolleRack1javaDTO rolleRack1javaDTO;
	private DynamicRack1javaDTO dynamicRack1javaDTO;
	private static int currentShowRoom;

	public synchronized ComplexRIA sendToServer(ComplexRIA complexRIA) {

		// the application needs to be reloaded after this function is called,
		// by the client side.
		// return complexRIA;
		try {
			saveNewLists(complexRIA);
			updateExistingLists(complexRIA);
			deleteExistingLists(complexRIA);
		} catch (Exception ex) {
			System.out.println(">>>>1" + ex.toString());
		}
		complexRIA.uSerMessage = "testing Message from chand";
		return complexRIA;
	}

	public synchronized ComplexRIA sendToClient(int currentShowRoom) {

		ComplexRIA complexRIA = new ComplexRIA();

		roundRack1javaDTO = new RoundRack1javaDTO();
		rolleRack1javaDTO = new RolleRack1javaDTO();
		dynamicRack1javaDTO = new DynamicRack1javaDTO();

		complexRIA.showRoomId = currentShowRoom;
		System.out.println("complexRIA.showRoomId@sendToClient: "
				+ complexRIA.showRoomId);
		for (RoundRack1java roundRack1java : roundRack1javaDTO
				.listRoundRack1java(currentShowRoom)) {

			System.out.println("getName" + roundRack1java.getName());
			System.out
					.println("getObject3DId" + roundRack1java.getObject3DId());
			System.out.println("getObject3DType"
					+ roundRack1java.getObject3DType());
			System.out.println("getRotationX" + roundRack1java.getRotationX());
			System.out.println("getRotationY" + roundRack1java.getRotationY());
			System.out.println("getRotationZ" + roundRack1java.getRotationZ());
			System.out.println("getScale" + roundRack1java.getScale());
			System.out.println("getStatus" + roundRack1java.getStatus());
			System.out.println("getX" + roundRack1java.getX());
			System.out.println("getY" + roundRack1java.getY());
			System.out.println("getZ" + roundRack1java.getZ());
			System.out.println("getShowroom" + roundRack1java.getShowroom());
			System.out
					.println("getMaterialId" + roundRack1java.getMaterialId());
			System.out.println(roundRack1java.toString());

			complexRIA.listExistingRoundRack1java.add(roundRack1java);
		}
		for (RolleRack1java rolleRack1java : rolleRack1javaDTO
				.listRolleRack1java(currentShowRoom)) {

			System.out.println(rolleRack1java.getName());
			System.out.println(rolleRack1java.getObject3DId());
			System.out.println(rolleRack1java.getObject3DType());
			System.out.println(rolleRack1java.getRotationX());
			System.out.println(rolleRack1java.getRotationY());
			System.out.println(rolleRack1java.getRotationZ());
			System.out.println(rolleRack1java.getScale());
			System.out.println(rolleRack1java.getStatus());
			System.out.println(rolleRack1java.getX());
			System.out.println(rolleRack1java.getY());
			System.out.println(rolleRack1java.getZ());
			System.out.println(rolleRack1java.getShowroom());
			System.out.println(rolleRack1java.getMaterialId());
			System.out.println(rolleRack1java.toString());

			complexRIA.listExistingRolleRack1java.add(rolleRack1java);
		}

		for (DynamicRack1java dynamicRack1java : dynamicRack1javaDTO
				.listDynamicRack1java(currentShowRoom)) {

			System.out.println(dynamicRack1java.getName());
			System.out.println(dynamicRack1java.getObject3DId());
			System.out.println(dynamicRack1java.getObject3DType());
			System.out.println(dynamicRack1java.getRotationX());
			System.out.println(dynamicRack1java.getRotationY());
			System.out.println(dynamicRack1java.getRotationZ());
			System.out.println(dynamicRack1java.getScale());
			System.out.println(dynamicRack1java.getStatus());
			System.out.println(dynamicRack1java.getX());
			System.out.println(dynamicRack1java.getY());
			System.out.println(dynamicRack1java.getZ());
			System.out.println(dynamicRack1java.getShowroom());
			System.out.println(dynamicRack1java.getMaterialId());
			System.out.println(dynamicRack1java.toString());

			complexRIA.listExistingDynamicRack1java.add(dynamicRack1java);
		}
		complexRIA.uSerMessage = "Initial Loading completed!";
		return complexRIA;
	}

	private ComplexRIA saveNewLists(ComplexRIA complexRIA) {

		currentShowRoom = complexRIA.showRoomId;
		// complexRIA.showRoomId = currentShowRoom;
		System.out.println("currentShowRoom: " + currentShowRoom);

		try {
			System.out.println("complexRIA.listNewRoundRack1java.size():"
					+ complexRIA.listNewRoundRack1java.size());
			for (RoundRack1java roundRack1java : complexRIA.listNewRoundRack1java) {
				roundRack1javaDTO = new RoundRack1javaDTO();
				roundRack1java.setShowroom(currentShowRoom);
				roundRack1java = roundRack1javaDTO
						.addRoundRack1java(roundRack1java);
			}

			System.out.println("complexRIA.listNewRolleRack1java.size():"
					+ complexRIA.listNewRolleRack1java.size());
			for (RolleRack1java rolleRack1java : complexRIA.listNewRolleRack1java) {
				System.out.println(">>>>2-1");
				rolleRack1javaDTO = new RolleRack1javaDTO();
				rolleRack1java.setShowroom(currentShowRoom);
				System.out.println(">>>>2-2");
				rolleRack1java = rolleRack1javaDTO
						.addRolleRack1java(rolleRack1java);
			}

			System.out.println("complexRIA.listNewDynamicRack1java.size():"
					+ complexRIA.listNewDynamicRack1java.size());
			for (DynamicRack1java dynamicRack1java : complexRIA.listNewDynamicRack1java) {
				dynamicRack1javaDTO = new DynamicRack1javaDTO();
				dynamicRack1java.setShowroom(currentShowRoom);
				dynamicRack1java = dynamicRack1javaDTO
						.addDynamicRack1java(dynamicRack1java);
			}

		} catch (Exception ex) {
			System.out.println(">>>>2" + ex.toString());
		}

		return complexRIA;
	}

	private void updateExistingLists(ComplexRIA complexRIA) {
		try {
			System.out.println("complexRIA.listExistingRoundRack1java.size():"
					+ complexRIA.listExistingRoundRack1java.size());
			for (RoundRack1java roundRack1java : complexRIA.listExistingRoundRack1java) {
				roundRack1java.setShowroom(currentShowRoom);
				roundRack1javaDTO = new RoundRack1javaDTO();
				roundRack1javaDTO.editRoundRack1java(roundRack1java);
			}

			System.out.println("complexRIA.listExistingRolleRack1java.size():"
					+ complexRIA.listExistingRolleRack1java.size());
			for (RolleRack1java rolleRack1java : complexRIA.listExistingRolleRack1java) {
				rolleRack1java.setShowroom(currentShowRoom);
				rolleRack1javaDTO = new RolleRack1javaDTO();
				rolleRack1javaDTO.editRolleRack1java(rolleRack1java);
			}

			System.out
					.println("complexRIA.listExistingDynamicRack1java.size():"
							+ complexRIA.listExistingDynamicRack1java.size());
			for (DynamicRack1java dynamicRack1java : complexRIA.listExistingDynamicRack1java) {
				dynamicRack1java.setShowroom(currentShowRoom);
				dynamicRack1javaDTO = new DynamicRack1javaDTO();
				dynamicRack1javaDTO.editDynamicRack1java(dynamicRack1java);
			}

			for (RoundRack1java roundRack1java : complexRIA.listExistingRoundRack1java) {

				System.out.println(roundRack1java.getName());
				System.out.println(roundRack1java.getObject3DId());
				System.out.println(roundRack1java.getObject3DType());
				System.out.println(roundRack1java.getRotationX());
				System.out.println(roundRack1java.getRotationY());
				System.out.println(roundRack1java.getRotationZ());
				System.out.println(roundRack1java.getScale());
				System.out.println(roundRack1java.getStatus());
				System.out.println(roundRack1java.getX());
				System.out.println(roundRack1java.getY());
				System.out.println(roundRack1java.getZ());
				System.out.println(roundRack1java.getShowroom());
				System.out.println(roundRack1java.getMaterialId());
				System.out.println(roundRack1java.toString());

				// complexRIA.listExistingRoundRack1java.add(roundRack1java);
			}
			for (RolleRack1java rolleRack1java : complexRIA.listExistingRolleRack1java) {

				System.out.println(rolleRack1java.getName());
				System.out.println(rolleRack1java.getObject3DId());
				System.out.println(rolleRack1java.getObject3DType());
				System.out.println(rolleRack1java.getRotationX());
				System.out.println(rolleRack1java.getRotationY());
				System.out.println(rolleRack1java.getRotationZ());
				System.out.println(rolleRack1java.getScale());
				System.out.println(rolleRack1java.getStatus());
				System.out.println(rolleRack1java.getX());
				System.out.println(rolleRack1java.getY());
				System.out.println(rolleRack1java.getZ());
				System.out.println(rolleRack1java.getShowroom());
				System.out.println(rolleRack1java.getMaterialId());
				System.out.println(rolleRack1java.toString());

				// rolleRack1java.toString();
				// complexRIA.listExistingRolleRack1java.add(rolleRack1java);
			}

			for (DynamicRack1java dynamicRack1java : complexRIA.listExistingDynamicRack1java) {

				System.out.println(dynamicRack1java.getName());
				System.out.println(dynamicRack1java.getObject3DId());
				System.out.println(dynamicRack1java.getObject3DType());
				System.out.println(dynamicRack1java.getRotationX());
				System.out.println(dynamicRack1java.getRotationY());
				System.out.println(dynamicRack1java.getRotationZ());
				System.out.println(dynamicRack1java.getScale());
				System.out.println(dynamicRack1java.getStatus());
				System.out.println(dynamicRack1java.getX());
				System.out.println(dynamicRack1java.getY());
				System.out.println(dynamicRack1java.getZ());
				System.out.println(dynamicRack1java.getShowroom());
				System.out.println(dynamicRack1java.getMaterialId());
				System.out.println(dynamicRack1java.toString());

				// complexRIA.listExistingDynamicRack1java.add(dynamicRack1java);
			}

		} catch (Exception ex) {
			System.out.println(">>>>3" + ex.toString());
		}
	}

	private void deleteExistingLists(ComplexRIA complexRIA) {
		try {
			for (RoundRack1java roundRack1java : complexRIA.listDeletedRoundRack1java) {
				roundRack1javaDTO = new RoundRack1javaDTO();
				roundRack1java.setStatus(Integer
						.parseInt(Tbl_rocel3dobjectsStatus.deleted));
				roundRack1javaDTO.editRoundRack1java(roundRack1java);
			}

			for (RolleRack1java rolleRack1java : complexRIA.listDeletedRolleRack1java) {
				rolleRack1javaDTO = new RolleRack1javaDTO();
				rolleRack1java.setStatus(Integer
						.parseInt(Tbl_rocel3dobjectsStatus.deleted));
				rolleRack1javaDTO.addRolleRack1java(rolleRack1java);
			}

			for (DynamicRack1java dynamicRack1java : complexRIA.listDeletedDynamicRack1java) {
				dynamicRack1javaDTO = new DynamicRack1javaDTO();
				dynamicRack1java.setStatus(Integer
						.parseInt(Tbl_rocel3dobjectsStatus.deleted));
				dynamicRack1javaDTO.addDynamicRack1java(dynamicRack1java);
			}
		} catch (Exception ex) {
			System.out.println(">>>>4" + ex.toString());
		}
	}
}