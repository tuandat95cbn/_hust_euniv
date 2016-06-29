package vn.webapp.modules.timetablemanagement.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.webapp.modules.timetablemanagement.dao.mRegularCourseTimeTableDAO;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
@Service
public class mRegularCourseTimeTableServiceImpl implements mRegularCourseTimeTableService {
	@Autowired
	mRegularCourseTimeTableDAO dao;
	@Override
	public List<mRegularCourseTimeTable> getAllCourseTimeTable() {
		// TODO Auto-generated method stub
		return dao.getAllCourseTimeTable();
		
	}
	@Override
	public int saveARegularCourseTimeTable(String RCTT_RCTTE_Code, String RCTT_Code, int RCTT_Day,
			String RCTT_Slots, String RCTT_Weeks, String RCTT_Room_Code) {
		// TODO Auto-generated method stub
		//System.out.println("This is "+name());
		mRegularCourseTimeTable regularCourseTimeTable= new mRegularCourseTimeTable();
		//System.out.println("This is 2"+name());
		regularCourseTimeTable.setRCTT_Code(RCTT_Code);
		regularCourseTimeTable.setRCTT_Day(RCTT_Day);
		regularCourseTimeTable.setRCTT_RCTTE_Code(RCTT_RCTTE_Code);
		regularCourseTimeTable.setRCTT_Room_Code(RCTT_Room_Code);
		regularCourseTimeTable.setRCTT_Slots(RCTT_Slots);
		regularCourseTimeTable.setRCTT_Weeks(RCTT_Weeks);
		System.out.println("This is 3"+name());
		return dao.saveARegularCourseTimeTable(regularCourseTimeTable);
	}
	public String name(){
		return "mRegularCourseTimeTableServiceImpl";
	}
	@Override
	public int deleteAllRCTT_ColumnName_Equal(String columnName, String value) {
		// TODO Auto-generated method stub
		return dao.removeRegularCourseTimeTable_ColumnName_Equal(columnName, value);
	}
	@Override
	public List<Integer> getAllDayValid() {
		// TODO Auto-generated method stub
		return dao.getAllDayValid();
	}
	@Override
	public List<Integer> getAllSlotsStart() {
		// TODO Auto-generated method stub
		return dao.getAllSlotsStart();
	}
	@Override
	public List<Integer> getAllNumberSlot() {
		// TODO Auto-generated method stub
		return dao.getAllNumberSlot();
	}

	@Override
	public int countCourseOnSaturday() {
		// TODO Auto-generated method stub
		return dao.countCourseOnSaturday();
	}

	@Override
	public int countCourseOnSaturdayInTCandD9() {
		// TODO Auto-generated method stub
		return dao.countCourseOnSaturdayInTCandD9();
	}

	@Override
	public List<Integer> getCourseRoom() {
		// TODO Auto-generated method stub
		return dao.getCourseRoom();
	}
	@Override
	public int getMaxWeeks() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getMinWeeks() {
		// TODO Auto-generated method stub
		return dao.getMinWeeks();
	}
	
	@Override
	public List<String> getCourseSemesterType() {
		// TODO Auto-generated method stub
		return dao.getCourseSemesterType();
	}

	@Override
	public List<String> getClassCodeOfCourse() {
		// TODO Auto-generated method stub
		return dao.getClassCodeOfCourse();
	}

	@Override
	public List<Integer> getCourseMaxRegister() {
		// TODO Auto-generated method stub
		return dao.getMaxCoursesRegister();
	}
	@Override
	public List<Set<Integer>> getListSetWeek() {
		// TODO Auto-generated method stub
		return dao.getListSetWeek();
	}
	@Override
	public List<Integer[]> getPairCourseFragmented() {
		// TODO Auto-generated method stub
		return dao.getPairCourseFragmented();
	}
}
