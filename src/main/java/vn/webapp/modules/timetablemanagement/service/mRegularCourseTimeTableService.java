package vn.webapp.modules.timetablemanagement.service;

import java.util.List;

import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;

public interface mRegularCourseTimeTableService {
	public List<mRegularCourseTimeTable > getAllCourseTimeTable();
	public int saveARegularCourseTimeTable( String RCTT_RCTTE_Code, String RCTT_Code, 
			int RCTT_Day, String RCTT_Slots, String RCTT_Weeks, String RCTT_Room_Code);

	public int deleteAllRCTT_ColumnName_Equal(String columnName, String value);
	public List<Integer> getAllDayValid();
	public List<Integer> getAllSlotsStart();
	public List<Integer> getAllNumberSlot();
	public int countCourseOnSaturday();
	public int countCourseOnSaturdayInTCandD9();
	public List<Integer> getCourseRoom();
}
