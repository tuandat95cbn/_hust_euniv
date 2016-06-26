package vn.webapp.modules.timetablemanagement.service;

import java.util.List;

import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTableEntry;

public interface mRegularCourseTimeTableEntryService {
	public List<mRegularCourseTimeTableEntry > getAllRegularCourseTimeTableEntry();
	public int saveARegularCourseTimeTableEntry( String RCTTE_AcaYear_Code, int RCTTE_Semester, 
			String RCTTE_Semester_Type, String RCTTE_Class_Code, String RCTTE_Course_Code, String RCTTE_Code,String RCTTE_Class_Type, int RCTTE_Course_MaxRegister);

	public int deleteRCTTE_ColumnName_Equal(String columnName,String value);
	public List<Integer> getCourseMaxRegister();
}
