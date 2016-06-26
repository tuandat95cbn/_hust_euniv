package vn.webapp.modules.timetablemanagement.dao;

import java.util.List;

import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTableEntry;

public interface mRegularCourseTimeTableEntryDAO {
	public List<mRegularCourseTimeTableEntry > getAllCourseTimeTableEntry();
	public int saveARegularCourseTimeTableEntry(mRegularCourseTimeTableEntry rctte);
	public int removeRegularCourseTimeTableEntry_ColumnName_Equal(String columnName, String value);
	public List<Integer> getCourseMaxRegister();
}
