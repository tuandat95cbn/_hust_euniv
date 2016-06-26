package vn.webapp.modules.timetablemanagement.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import vn.webapp.controller.BaseWeb;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
import vn.webapp.modules.timetablemanagement.service.mRegularCourseTimeTableEntryService;
import vn.webapp.modules.timetablemanagement.service.mRegularCourseTimeTableService;


@Controller("cpmTimeTable")
@RequestMapping(value={"/cp"})
public class mTimeTableController extends BaseWeb{

	@Autowired
	mRegularCourseTimeTableService rctts;
	
	@Autowired
	mRegularCourseTimeTableEntryService rcttes;
	
	private int previous_class_code = -1;
	
	private MultipartFile timetableFile;
	//static final String status = "active";
	
	public String name(){
		return "mTimeTableController";
	}
	
	@RequestMapping(value="/analyse-regular-timetable", method=RequestMethod.GET)
	public String showPage(ModelMap model){
		System.out.println(name()+"::showPage");
		//rctts.countCourseOnSaturday();
		//model.put("sss",status);
		List<Integer> test = rctts.getCourseRoom();
		System.out.println(name()+"::showPage--test get: "+test);
		return "cp.analyseTimetableHomepage";
	}
	
	@RequestMapping(value="/upload-file-timetable", method=RequestMethod.POST)
	public @ResponseBody String uploadFile(MultipartHttpServletRequest request){
		Iterator<String> itr = request.getFileNames();
		timetableFile = request.getFile(itr.next());
		//System.out.println(name()+"::uploadFile--"+timetableFile.getOriginalFilename() + " uploaded");
		
		if(timetableFile != null){
			readFile();
		}
		return "{}";
	}
	
	public void readFile(){
		try {
			InputStream readFile = timetableFile.getInputStream();
			XSSFWorkbook wb = new XSSFWorkbook(readFile);
			//System.out.println(name()+"::readFile"+"--number sheet of " + timetableFile.getOriginalFilename() +" :: "+wb.getNumberOfSheets());
			
			XSSFSheet sheet = wb.getSheetAt(3);
			XSSFRow row;
			//XSSFCell cell;
			
			int rows = sheet.getPhysicalNumberOfRows();
			//System.out.println(name()+"::readFile"+"--number row of sheet 3 :: " + rows);
			
			//row = sheet.getRow(3);
			//System.out.println("cell 5 of row 3 :: "+ row.getCell(0).getStringCellValue());
			
			
			//int cols = row.getPhysicalNumberOfCells();
			//System.out.println(name()+"::readFile"+"--number column :: " + cols);
			
			//ArrayList<String> row_value = new ArrayList<String>();
			
			
			for(int i=3; i<=rows; i++){
				System.out.println(name()+"::readFile"+"--row "+i);
				row = sheet.getRow(i);
				//row_value.clear();
				if(row != null){
					
					//get rctte_class_type
					String RCTTE_Class_Type = row.getCell(16).getStringCellValue();
					if(!(RCTTE_Class_Type.equals("LT") || RCTTE_Class_Type.equals("BT") || RCTTE_Class_Type.equals("LT+BT"))){
						continue;
					}
					//System.out.println(name()+"::readFile" + "---RCTTE_Class_Code: "+ RCTTE_Class_Type);
					
					//get RCTT_Room_Code
					String RCTT_Room_Code = row.getCell(14).getStringCellValue();
					if(RCTT_Room_Code.equals("NULL")){
						continue;
					}
					//System.out.println(name()+"::readFile" + "---RCTT_Room_Code: "+ RCTT_Room_Code);
					
					//get RCTT_Slots
					String RCTT_Slots=convertTimeToSlot(row.getCell(9).getStringCellValue());
					if(RCTT_Slots==null){
						continue;
					}
					//System.out.println(name()+"::readFile" + "---RCTT_Slots: "+ RCTT_Slots);
					
					//get RCTT_Day
					int RCTT_Day;
					String day="";
					switch(row.getCell(7).getCellType()){
						case XSSFCell.CELL_TYPE_NUMERIC:
							day += String.valueOf((int)row.getCell(7).getNumericCellValue());
							break;
						case XSSFCell.CELL_TYPE_STRING:
							day += row.getCell(7).getStringCellValue();
							break;
					}
					
					if(day.equals("NULL")){
						continue;
					}	
					RCTT_Day = Integer.parseInt(day);
					//System.out.println(name()+"::readFile" + "---RCTT_Day: "+ RCTT_Day);
					
					int class_code=-1;
					switch(row.getCell(3).getCellType()){
						case XSSFCell.CELL_TYPE_NUMERIC: 
							class_code = (int)row.getCell(3).getNumericCellValue(); 
							break;
						case XSSFCell.CELL_TYPE_STRING: 
							class_code = Integer.parseInt(row.getCell(3).getStringCellValue()); 
							break;
					}
		
					//get year
					String year="";
					switch(row.getCell(0).getCellType()){
						case XSSFCell.CELL_TYPE_NUMERIC: 
							year += String.valueOf((int)row.getCell(0).getNumericCellValue());
							break;
						case XSSFCell.CELL_TYPE_STRING: 
							year += row.getCell(0).getStringCellValue();
							break;
					}
					String aca_year = year.substring(0, year.length()-1);
					int rctt_acayear = Integer.parseInt(aca_year);
					String RCTTE_AcaYear_Code = rctt_acayear+"-"+(rctt_acayear+1);
					//System.out.println(name()+"::readFile" + "---RCTTE_AcaYear_Code: "+ RCTTE_AcaYear_Code);
					
					//get semester
					int RCTTE_Semester = Integer.parseInt(year.substring(year.length()-1));
					//System.out.println(name()+"::readFile" + "---RCTTE_semester: "+ RCTTE_Semester);
					
					//get code class
					String RCTTE_Class_Code="";
					switch(row.getCell(3).getCellType()){
						case XSSFCell.CELL_TYPE_NUMERIC: 
							RCTTE_Class_Code += String.valueOf((int)row.getCell(3).getNumericCellValue());
							break;
						case XSSFCell.CELL_TYPE_STRING: 
							RCTTE_Class_Code += row.getCell(3).getStringCellValue();
							break;
					}
					//System.out.println(name()+"::readFile" + "---RCTTE_Class_Code: "+ RCTTE_Class_Code);
					
					//get rctte_code
					String RCTTE_Code = RCTTE_AcaYear_Code+"-"+RCTTE_Semester+"-"+RCTTE_Class_Code;
					//System.out.println(name()+"::readFile" + "---RCTTE_Code: "+ RCTTE_Code);
					
					if(class_code != previous_class_code){
						//get semester_type
						String RCTTE_Semester_Type = row.getCell(17).getStringCellValue();
						//System.out.println(name()+"::readFile" + "---RCTTE_semester_type: "+ RCTTE_Semester_Type);
						
						//get course code
						String RCTTE_Course_Code = row.getCell(5).getStringCellValue();
						//System.out.println(name()+"::readFile" + "---RCTTE_Course_Code: "+ RCTTE_Course_Code);
						
						//get rctte_course_maxregister
						int RCTTE_Course_MaxRegister = (int)row.getCell(20).getNumericCellValue();
						
						rcttes.saveARegularCourseTimeTableEntry(RCTTE_AcaYear_Code, RCTTE_Semester, RCTTE_Semester_Type, RCTTE_Class_Code, RCTTE_Course_Code, RCTTE_Code, RCTTE_Class_Type, RCTTE_Course_MaxRegister);
						previous_class_code = class_code;
					}
					
					//get RCTT_RCTTE_Code
					String RCTT_RCTTE_Code = RCTTE_Code;
					
					//get RCTT_Code
					String RCTT_Code = RCTT_RCTTE_Code + "-"+RCTT_Day;
					//System.out.println(name()+"::readFile" + "---RCTT_Code: "+ RCTT_Code);
					
					//get RCTT_Weeks
					String RCTT_Weeks="";
					switch(row.getCell(13).getCellType()){
						case XSSFCell.CELL_TYPE_NUMERIC:
							RCTT_Weeks += String.valueOf((int)row.getCell(13).getNumericCellValue());
							break;
						case XSSFCell.CELL_TYPE_STRING:
							RCTT_Weeks += row.getCell(13).getStringCellValue();
							break;
					}
					//String RCTT_Weeks = row.getCell(13).getStringCellValue();
					//System.out.println(name()+"::readFile" + "---RCTT_Weeks: "+ RCTT_Weeks);
					
					rctts.saveARegularCourseTimeTable(RCTT_RCTTE_Code, RCTT_Code, RCTT_Day, RCTT_Slots, RCTT_Weeks, RCTT_Room_Code);
					
					/*
					for(int j=0; j<cols; j++){
						cell = row.getCell(j);
						String tmp="";
						switch(cell.getCellType()){
							case XSSFCell.CELL_TYPE_NUMERIC :
								tmp = tmp + ((int)cell.getNumericCellValue());
								break;
							case XSSFCell.CELL_TYPE_STRING :
								tmp = cell.getStringCellValue();
								break;
						}
						//String tmp = row.getCell(j).getStringCellValue();
						row_value.add(tmp);
						System.out.println(name()+"::readFile"+"--row " +i+" cell "+j + " value: " +row_value.get(j));
					}
					addtoDatabase(row_value);
					*/
				}
			}
			
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/*
	public void addtoDatabase(ArrayList<String> row_value){
		
		int class_code = Integer.parseInt(row_value.get(3));
		
		//get year
		String year = row_value.get(0);
		String aca_year = year.substring(0, year.length()-1);
		int rctt_acayear = Integer.parseInt(aca_year);
	
		String RCTTE_AcaYear_Code = rctt_acayear+"-"+(rctt_acayear+1);
		System.out.println(name()+"::addtoDatabase" + "---RCTTE_AcaYear_Code: "+ RCTTE_AcaYear_Code);
		
		//get semester
		int RCTTE_Semester = Integer.parseInt(year.substring(year.length()-1));
		System.out.println(name()+"::addtoDatabase" + "---RCTTE_semester: "+ RCTTE_Semester);
		
		//get code class
		String RCTTE_Class_Code = row_value.get(3);
		System.out.println(name()+"::addtoDatabase" + "---RCTTE_Class_Code: "+ RCTTE_Class_Code);
		
		//get rctte_code
		String RCTTE_Code = RCTTE_AcaYear_Code+"-"+RCTTE_Semester+"-"+RCTTE_Class_Code;
		System.out.println(name()+"::addtoDatabase" + "---RCTTE_Code: "+ RCTTE_Code);
		
		if(class_code != previous_class_code){
			//get semester_type
			String RCTTE_Semester_Type = row_value.get(17);
			System.out.println(name()+"::addtoDatabase" + "---RCTTE_semester_type: "+ RCTTE_Semester_Type);
			
			//get course code
			String RCTTE_Course_Code = row_value.get(5);
			System.out.println(name()+"::addtoDatabase" + "---RCTTE_Course_Code: "+ RCTTE_Course_Code);
			
			//get rctte_class_type
			String RCTTE_Class_Type = row_value.get(16);
			System.out.println(name()+"::addtoDatabase" + "---RCTTE_Class_Code: "+ RCTTE_Class_Type);
			
			rcttes.saveARegularCourseTimeTableEntry(RCTTE_AcaYear_Code, RCTTE_Semester, RCTTE_Semester_Type, RCTTE_Class_Code, RCTTE_Course_Code, RCTTE_Code, RCTTE_Class_Type);
			previous_class_code = Integer.parseInt(row_value.get(3));;
		}
		
		String RCTT_RCTTE_Code = RCTTE_Code;
		
		int RCTT_Day;
		if(row_value.get(7).equals("NULL")){
			RCTT_Day = 0;
		}else{
			RCTT_Day = Integer.parseInt(row_value.get(7));
		}
		System.out.println(name()+"::addtoDatabase" + "---RCTT_Day: "+ RCTT_Day);
		String RCTT_Code = RCTT_RCTTE_Code + "-"+RCTT_Day;
		System.out.println(name()+"::addtoDatabase" + "---RCTT_Code: "+ RCTT_Code);
		String RCTT_Slots = convertTimeToSlot(row_value.get(9));
		System.out.println(name()+"::addtoDatabase" + "---RCTT_Slots: "+ RCTT_Slots);
		String RCTT_Weeks = row_value.get(13);
		System.out.println(name()+"::addtoDatabase" + "---RCTT_Weeks: "+ RCTT_Weeks);
		String RCTT_Room_Code = row_value.get(14);
		System.out.println(name()+"::addtoDatabase" + "---RCTT_Room_Code: "+ RCTT_Room_Code);
		rctts.saveARegularCourseTimeTable(RCTT_RCTTE_Code, RCTT_Code, RCTT_Day, RCTT_Slots, RCTT_Weeks, RCTT_Room_Code);
	}
	*/
	
	public String convertTimeToSlot(String time){
		int pos = time.indexOf("-");
		if(pos == -1){
			return null;
		}
		
		String start = time.substring(0,pos);
		String end = time.substring(pos+1);
		
		int iStart;
		int iEnd;
		
		switch(start){
			case "0645": iStart = 1; break;
			case "0735": iStart = 2; break;
			case "0830": iStart = 3; break;
			case "0920": iStart = 4; break;
			case "1015": iStart = 5; break;
			case "1105": iStart = 6; break;
			case "1230": iStart = 7; break;
			case "1320": iStart = 8; break;
			case "1415": iStart = 9; break;
			case "1505": iStart = 10; break;
			case "1600": iStart = 11; break;
			case "1650": iStart = 12; break;
			default : return null;
		}
		
		switch(end){
			case "0730": iEnd = 1; break;
			case "0820": iEnd = 2; break;
			case "0915": iEnd = 3; break;
			case "1005": iEnd = 4; break;
			case "1100": iEnd = 5; break;
			case "1150": iEnd = 6; break;
			case "1315": iEnd = 7; break;
			case "1405": iEnd = 8; break;
			case "1500": iEnd = 9; break;
			case "1550": iEnd = 10; break;
			case "1645": iEnd = 11; break;
			case "1735": iEnd = 12; break;
			default : return null;
		}
		
		return (iStart+"-"+iEnd);
	}

	/*@RequestMapping(value="/analyse-timetable")
	public String showPageAnalyseResult(ModelMap model){
		List<mRegularCourseTimeTable> tblrctt = rctts.getAllCourseTimeTable();
		
		analyseTimeTable analysist = new analyseTimeTable();
		int nCourseOnSaturday = analysist.countCourseOnSaturday(tblrctt);
		int nCourseOnSaturdayInTCandD9 = analysist.countCourseOnSaturdayInTCandD9(tblrctt);
		
		model.put("nCourseOnSaturday", nCourseOnSaturday);
		model.put("nCourseOnSaturdayInTCandD9", nCourseOnSaturdayInTCandD9);
		
		return "cp.analyseTimetableResultPage";
	}*/
}
