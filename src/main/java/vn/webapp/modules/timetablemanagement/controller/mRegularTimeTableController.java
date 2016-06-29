package vn.webapp.modules.timetablemanagement.controller;

import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.webapp.modules.timetablemanagement.service.mRegularCourseTimeTableEntryService;
import vn.webapp.modules.timetablemanagement.service.mRegularCourseTimeTableService;
import vn.webapp.modules.timetablemanagement.service.mRoomsService;

@Controller("cpmRegularTimeTable")
@RequestMapping(value={"/cp"})
public class mRegularTimeTableController {
	@Autowired
	mRegularCourseTimeTableService regularCourseTimeTableService;
	@Autowired
	mRegularCourseTimeTableEntryService regularCourseTimeTableEntryService;
	@Autowired
	mRoomsService RS;
	public String name (){
		return "mRegularTimeTableController: ";
	}
	@RequestMapping(value="/view-regular-timetale.html", method= RequestMethod.GET )
	public String viewRegularExamTimetable(ModelMap model, HttpSession session){
		//List< > list = regularCourseTimeTableService.getAllCourseTimeTable() ;
		
		model.put("regularCourseTimeTable", regularCourseTimeTableService.getAllCourseTimeTable());
		System.out.println(2);
		
		
		System.out.println("This is :"+RS.getNumberRoom());
 		return "cp.ViewRegularTimeTable";
	}
	
	@RequestMapping(value="/view-regular-timetale-entry.html", method= RequestMethod.GET )
	public String viewRegularExamTimetableEntry(ModelMap model, HttpSession session){
		//List< > list = regularCourseTimeTableService.getAllCourseTimeTable() ;
		model.put("regularCourseTimeTableEntry", regularCourseTimeTableEntryService.getAllRegularCourseTimeTableEntry());
		
		return "cp.ViewRegularTimeTableEntry";
	}
}
