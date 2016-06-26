package vn.webapp.modules.timetablemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.webapp.modules.timetablemanagement.dao.mRegularCourseTimeTableEntryDAO;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTableEntry;
@Service
public class mRegularCourseTimeTableEntryServiceImpl implements mRegularCourseTimeTableEntryService{
	@Autowired
	mRegularCourseTimeTableEntryDAO dao;

	@Override
	public List<mRegularCourseTimeTableEntry> getAllRegularCourseTimeTableEntry() {
		// TODO Auto-generated method stub
		return dao.getAllCourseTimeTableEntry();
	}

	@Override
	public int saveARegularCourseTimeTableEntry(String RCTTE_AcaYear_Code, int RCTTE_Semester,
			String RCTTE_Semester_Type, String RCTTE_Class_Code, String RCTTE_Course_Code, String RCTTE_Code,
			String RCTTE_Class_Type, int RCTTE_Course_MaxRegister) {
		// TODO Auto-generated method stub
		mRegularCourseTimeTableEntry rctte = new mRegularCourseTimeTableEntry();
		rctte.setRCTTE_AcaYear_Code(RCTTE_AcaYear_Code);
		rctte.setRCTTE_Class_Code(RCTTE_Class_Code);
		rctte.setRCTTE_Class_Type(RCTTE_Class_Type);
		rctte.setRCTTE_Code(RCTTE_Code);
		rctte.setRCTTE_Course_Code(RCTTE_Course_Code);
		rctte.setRCTTE_Semester(RCTTE_Semester );
		rctte.setRCTTE_Semester_Type(RCTTE_Semester_Type);
		rctte.setRCTTE_Course_MaxRegister(RCTTE_Course_MaxRegister);
	
		return dao.saveARegularCourseTimeTableEntry(rctte);
	}



	@Override
	public int deleteRCTTE_ColumnName_Equal(String columnName, String value) {
		// TODO Auto-generated method stub
		return dao.removeRegularCourseTimeTableEntry_ColumnName_Equal(columnName, value) ;
	}
	@Override
	public List<Integer> getCourseMaxRegister() {
		// TODO Auto-generated method stub
		return dao.getCourseMaxRegister();
	}
}
