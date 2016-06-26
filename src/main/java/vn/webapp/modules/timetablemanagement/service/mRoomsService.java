package vn.webapp.modules.timetablemanagement.service;

import java.util.List;

import vn.webapp.modules.timetablemanagement.model.mRooms;

public interface mRoomsService {
	public List<mRooms> getAllRoom();
	public List<Integer> getListRoomCapacity();
}
