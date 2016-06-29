package vn.webapp.modules.timetablemanagement.dao;

import java.util.List;

import vn.webapp.modules.timetablemanagement.model.mRooms;

public interface mRoomsDao {
	public List<mRooms> getAllRoom(); 
	public List<Integer> getListRoomCapacity();
	public int getNumberRoom();

}
