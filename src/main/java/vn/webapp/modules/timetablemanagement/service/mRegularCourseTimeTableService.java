package vn.webapp.modules.timetablemanagement.service;

import java.util.List;
import java.util.Set;

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
	public int getMaxWeeks();
	public int getMinWeeks();
	public List<String> getCourseSemesterType();
	public List<String> getClassCodeOfCourse();
	public List<Integer> getCourseMaxRegister();
	public List<Set<Integer>> getListSetWeek();
	public List<Integer[]> getPairCourseFragmented();
}
