package vn.webapp.modules.timetablemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.webapp.modules.timetablemanagement.dao.mRoomsDao;
import vn.webapp.modules.timetablemanagement.model.mRooms;
@Service
public class mRoomsServiceImpl implements mRoomsService {
	@Autowired
	mRoomsDao dao;
	@Override
	public List<mRooms> getAllRoom() {
		// TODO Auto-generated method stub
		return dao.getAllRoom();
	}
	@Override
	public List<Integer> getListRoomCapacity() {
		// TODO Auto-generated method stub
		return dao.getListRoomCapacity();
	}
	
}
