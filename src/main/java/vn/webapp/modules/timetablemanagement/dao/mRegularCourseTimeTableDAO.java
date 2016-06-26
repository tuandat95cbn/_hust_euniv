package vn.webapp.modules.timetablemanagement.dao;

import java.util.List;
import java.util.Set;

import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
import vn.webapp.modules.usermanagement.model.mStaff;

public interface mRegularCourseTimeTableDAO {
	public List<mRegularCourseTimeTable > getAllCourseTimeTable();
	public int saveARegularCourseTimeTable(mRegularCourseTimeTable rctt);
	public int removeRegularCourseTimeTable_ColumnName_Equal(String columnName, String value);
	public List<Integer> getAllDayValid();
	public List<Integer> getAllSlotsStart();
	public List<Integer> getAllNumberSlot();
	public int countCourseOnSaturday();
	public int countCourseOnSaturdayInTCandD9();
	public List<Integer> getCourseRoom();
	public List<Set<Integer>> getListSetWeek();
}