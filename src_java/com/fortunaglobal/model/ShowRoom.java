package com.fortunaglobal.model;

public class ShowRoom {
	// This class consists of the details about the Show Rooms
	private int showRoomId = 1;
	private ShowRoomUser showRoomUser;

	public void setShowRoomId(int showRoomId) {
		this.showRoomId = showRoomId;
	}

	public int getShowRoomId() {
		return showRoomId;
	}

	public void setShowRoomUser(ShowRoomUser showRoomUser) {
		this.showRoomUser = showRoomUser;
	}

	public ShowRoomUser getShowRoomUser() {
		return showRoomUser;
	}

}
