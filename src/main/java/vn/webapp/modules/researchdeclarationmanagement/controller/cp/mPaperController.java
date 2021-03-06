/**
 * @author : HaTN 
 * @address : HUST K51
 * @modified : December 27th, 2015
 */
package vn.webapp.modules.researchdeclarationmanagement.controller.cp;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vn.webapp.controller.BaseWeb;
import vn.webapp.modules.researchdeclarationmanagement.model.PaperStaffs;
import vn.webapp.modules.researchdeclarationmanagement.model.mAcademicYear;
import vn.webapp.modules.researchdeclarationmanagement.model.mJournal;
import vn.webapp.modules.researchdeclarationmanagement.model.mPaperCategory;
import vn.webapp.modules.researchdeclarationmanagement.model.mPapers;
import vn.webapp.modules.researchdeclarationmanagement.model.mPapersCategoryHourBudget;
import vn.webapp.modules.researchdeclarationmanagement.service.PaperStaffsService;
import vn.webapp.modules.researchdeclarationmanagement.service.mAcademicYearService;
import vn.webapp.modules.researchdeclarationmanagement.service.mJournalService;
import vn.webapp.modules.researchdeclarationmanagement.service.mPaperCategoryHourBudgetService;
import vn.webapp.modules.researchdeclarationmanagement.service.mPaperCategoryService;
import vn.webapp.modules.researchdeclarationmanagement.service.mPaperService;
import vn.webapp.modules.researchdeclarationmanagement.validation.mPaperExcellValidation;
import vn.webapp.modules.researchdeclarationmanagement.validation.mPaperValidation;
import vn.webapp.modules.usermanagement.model.mDepartment;
import vn.webapp.modules.usermanagement.model.mFaculty;
import vn.webapp.modules.usermanagement.model.mStaff;
import vn.webapp.modules.usermanagement.service.mDepartmentService;
import vn.webapp.modules.usermanagement.service.mFacultyService;
import vn.webapp.modules.usermanagement.service.mStaffService;
import vn.webapp.modules.usermanagement.service.mUserService;

import com.google.gson.Gson;

@Controller("cpmPaper")
@RequestMapping(value = {"/cp"})
public class mPaperController extends BaseWeb {
	@Autowired
    private mPaperService paperService;
    
    @Autowired
    private mPaperCategoryService paperCategoryService;
    
    @Autowired
    private mJournalService journalService;
    
    @Autowired
    private mStaffService staffService;
    
    @Autowired
    private mDepartmentService departmentService;
    
    @Autowired
    private mAcademicYearService academicYearService;
    
    @Autowired
    private mPaperCategoryHourBudgetService paperCategoryHourBudgetService;
    
    @Autowired
    private mUserService userService;
    
    @Autowired
    private PaperStaffsService paperStaffsService;
    
    @Autowired
    private mFacultyService facultyService;
    
    static final String status = "active";
    
    /**
     * Size of a byte buffer to read/write file
     */
    private static final int BUFFER_SIZE = 4096;
    public static final String APPROVE_STATUS_PENDING = "PENDING";
    public static final String APPROVE_STATUS_APPROVED = "APPROVED";
    public static final String APPROVE_STATUS_REJECT = "REJECT";
    
    /**
    * Show list all papers
    * @param model
    * @return
    */
   @RequestMapping(value = "/papers", method = RequestMethod.GET)
   public String paperList(ModelMap model, HttpSession session) {
	   String userCode = session.getAttribute("currentUserCode").toString();
	   String userRole = session.getAttribute("currentUserRole").toString();
	   List<mPapers> papersList = paperService.loadPaperListByStaff(userRole, userCode);
	   model.put("papersList", papersList);
	   model.put("papers", status);
	   return "cp.papers";
   }
   
   
   /**
    * Adding a paper
    * @param model
    * @return
    */
   @RequestMapping(value = "/add-a-paper", method = RequestMethod.GET)
   public String addPaper(ModelMap model, HttpSession session) {
	   /*
	    * Get paper's category
	    */
	   List<mPaperCategory> paperCategory = paperCategoryService.list();
	   List<mJournal> journalList = journalService.list();
	   List<mPapersCategoryHourBudget> papersCategoryHourBudget = paperCategoryHourBudgetService.loadPaperCategoryHourBudgets();
	   List<mFaculty> listFaculty = facultyService.loadFacultyList();
	   List<mStaff> staffList = staffService.listStaffs();
	   
	   // Get list reportingYear
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   
	   String paperConvertedHours = this.setJsonByListPaperCategory(papersCategoryHourBudget, patentReportingAcademicDateList);
	   /*
	    * Put data back to view
	    */
	   model.put("patentReportingAcademicDateList", patentReportingAcademicDateList);
	   model.put("paperConvertedHours", paperConvertedHours);
	   model.put("paperCategory", paperCategory);
	   model.put("paperCategory", paperCategory);
	   model.put("listFaculty", listFaculty);
	   model.put("journalList", journalList);
	   model.put("paperFormAdd", new mPaperValidation());
	   model.put("papers", status);
       return "cp.addAPaper";
   }
   
   /**
    * Convert a List of PaperCategory into a Json sequence
    * @param theListPaperCategory
    * @return
    */
   public String setJsonByListPaperCategory(List<mPapersCategoryHourBudget> papersCategoryHourBudget, List<mAcademicYear> patentReportingAcademicDateList) {
	   /*
	    * Set a hashmap for holding paper list by key - value pairs
	    */
	   HashMap<String, HashMap<String, Integer>> paperConvertedHours = new HashMap<String, HashMap<String, Integer>>();
	   if(patentReportingAcademicDateList != null && papersCategoryHourBudget != null){
		   for(mAcademicYear acaYear : patentReportingAcademicDateList){
			   String sYearCode = acaYear.getACAYEAR_Code();
			   HashMap<String, Integer> paperCatHourBudgetByYear = new HashMap<String, Integer>();
			   for (mPapersCategoryHourBudget paperCatHourBudget : papersCategoryHourBudget) {
				   if(sYearCode.equals(paperCatHourBudget.getPCAHOBUD_AcademicYearCode()))
				   {
					   paperCatHourBudgetByYear.put(paperCatHourBudget.getPCAHOBUD_PaperCategoryCode(), paperCatHourBudget.getPCAHOBUD_Hour());
				   }
			   }
			   paperConvertedHours.put(sYearCode, paperCatHourBudgetByYear);
		   }
		   
		   Gson gson = new Gson(); 
		   String jsonpaperConvertedHours = gson.toJson(paperConvertedHours); 
		   return jsonpaperConvertedHours;
	   }
	   return "";
   }
   
   /**
    * Save a paper
    * @param paperValid
    * @param result
    * @param model
    * @param session
    * @return String
    */
    public String name(){
    	return "mPaperController";
    }
	private String establishFileNameStoredDataBase(String filename) {
		Date currentDate = new Date();
		SimpleDateFormat dateformatyyyyMMdd = new SimpleDateFormat(
				"HHmmssddMMyyyy");
		String sCurrentDate = dateformatyyyyMMdd.format(currentDate);
		return "thuyetminh-" + sCurrentDate + filename;

	}

	private String establishFullFileNameForUpload(String filename,
			String userCode, HttpServletRequest request) {

		//String uploadDir = "/uploads" + File.separator + userCode + File.separator + "papers";
		// String realPathtoUploads =
		// request.getServletContext().getRealPath(uploadDir);
		String realPathtoUploads = PROJECT_ROOT_DIR + File.separator + userCode
				+ File.separator + "papers";
		File dir = new File(realPathtoUploads);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		// Set name file
		// filename =
		// establishFileNameStoredDataBase(filename);//"thuyetminh-"+sCurrentDate+filename;
		String fullfilename = realPathtoUploads + File.separator + filename;
		System.out.println(name()
				+ "::establishFullFileNameForDownload, PROJECT_ROOT_DIR = "
				+ PROJECT_ROOT_DIR + ", fullfilename = " + fullfilename);
		return fullfilename;
	}

	private String establishFullFileNameForDownload(String filename,
			String userCode, HttpServletRequest request) {

		//String uploadDir = "/uploads" + File.separator + userCode + File.separator + "projects";
		// String realPathtoUploads =
		// request.getServletContext().getRealPath(uploadDir);
		String realPathtoUploads = PROJECT_ROOT_DIR + File.separator + userCode
				+ File.separator + "papers";

		File dir = new File(realPathtoUploads);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		// System.out.println(name()
		// + "::establishFullFileNameForDownload(filename = " + filename
		// + ", dir = " + dir.getAbsolutePath());
		// Set name file
		// filename = "thuyetminh-"+sCurrentDate+filename;
		// String fullfilename = dir.getAbsolutePath() + File.separator +
		// filename;
		String fullfilename = realPathtoUploads + File.separator + filename;

		System.out.println(name()
				+ "::establishFullFileNameForDownload, PROJECT_ROOT_DIR = "
				+ PROJECT_ROOT_DIR + ", fullfilename = " + fullfilename);
		return fullfilename;
	}
   
   @RequestMapping(value="save-a-paper", method=RequestMethod.POST)
   public String saveAnUser(HttpServletRequest request, @Valid @ModelAttribute("paperFormAdd") mPaperValidation paperValid, BindingResult result,  Map model, HttpSession session) {
	   /*
	    * Get list of paper category and journalList
	    */
	   
	   String userCode = session.getAttribute("currentUserCode")
				.toString();
	   
	   List<mPaperCategory> paperCategory = paperCategoryService.list();
	   List<mJournal> journalList = journalService.list();
	   List<mPapersCategoryHourBudget> papersCategoryHourBudget = paperCategoryHourBudgetService.loadPaperCategoryHourBudgets();
	   
	   // Get list reportingYear
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   String paperConvertedHours = this.setJsonByListPaperCategory(papersCategoryHourBudget, patentReportingAcademicDateList);
	   List<mFaculty> listFaculty = facultyService.loadFacultyList();
	   List<mStaff> staffList = staffService.listStaffs();
	   
	   /*
	    * Put data back to view
	    */
	   model.put("patentReportingAcademicDateList", patentReportingAcademicDateList);
	   model.put("paperConvertedHours", paperConvertedHours);
	   model.put("paperCategory", paperCategory);
	   model.put("listFaculty", listFaculty);
	   model.put("staffList", staffList);
	   model.put("journalList", journalList);
	   model.put("papers", status);
	   if(result.hasErrors()) {
           return "cp.addAPaper";
       }else
       {
    	   /*
    	    * Prepare data for inserting DB
    	    */
    	   String paperCatCode = paperValid.getPaperCatCode();
    	   mPaperCategory paperCate = paperCategoryService.getPaperCateByCode(paperCatCode);
    	   String paperReportingAcademicDate = paperValid.getPatentReportingAcademicDate();
    	   mPapersCategoryHourBudget papersCateHourBudget = paperCategoryHourBudgetService.loadPaperCategoryHourBudgetByCategoryAndYear(paperCatCode, paperReportingAcademicDate);
    	   
    	   String paperAuthors 			= paperValid.getPaperAuthorList();
    	   String[] paperAuthorsList 	= paperAuthors.trim().split("\\,");
    	   Integer numberOfAuthors 		= paperAuthorsList.length;
    	   for(int i=0; i<paperAuthorsList.length; i++){
    	     if(paperAuthorsList[i].equals("")){
    	    	 numberOfAuthors--;
    	     }
    	   }
    	   String[] projectMembers = request.getParameterValues("projectMembers");
    	   if(projectMembers != null && projectMembers.length > 0){
	    	   /**
	    	    * Uploading file
	    	    */
	    	   MultipartFile paperSourceUploadFile = paperValid.getPaperFileUpload();
	    	   String fileName = paperSourceUploadFile.getOriginalFilename();
	    	   String paperSourceUploadFileSrc = "";
	    	   try {
	    		   byte[] bytes = paperSourceUploadFile.getBytes();
	    		   /*
	    		   //Creating Date in java with today's date.
	    		   Date currentDate = new Date();
	    		   //change date into string yyyyMMdd format example "20110914"
	    		   SimpleDateFormat dateformatyyyyMMdd = new SimpleDateFormat("HHmmssddMMyyyy");
	    		   String sCurrentDate = dateformatyyyyMMdd.format(currentDate);
	    			   
		    	   byte[] bytes = paperSourceUploadFile.getBytes();
		    	   String path = request.getServletContext().getRealPath("uploads");
		    	   File dir = new File(path+ "/papers");
		    	   System.out.println(dir.getAbsolutePath());
		    	   
		           if (!dir.exists()){
		        	   dir.mkdirs();
		           }
		           */
		           String uploadDir = "/uploads" + File.separator
							+ userCode + File.separator + "papers";
					String realPathtoUploads = request
							.getServletContext().getRealPath(uploadDir);
					File dir = new File(realPathtoUploads);
					if (!dir.exists()) {
						dir.mkdirs();
					}
					/*
	               // Create a file
		           String currentUserName 	= session.getAttribute("currentUserName").toString();
		           fileName = currentUserName + "_" + sCurrentDate + "_" + fileName; 
		           
	               File serverFile = new File(dir.getAbsolutePath()+ File.separator + fileName);
	               //if(serverFile.exists()){
	            	   paperSourceUploadFileSrc = dir.getAbsolutePath()+ File.separator + fileName;
	               //}else{
	               //}
	            	  */ 
	            	   fileName = establishFileNameStoredDataBase(fileName);
						String fullfilename = establishFullFileNameForUpload(
								fileName, userCode, request);

						File serverFile = new File(fullfilename);
						System.out
								.println(name()
										+ "::saveAPaper, upload file with fileName (stored in DataBase) = "
										+ fileName + ", fullfilename = "
										+ fullfilename);
						
	               // Save data into file
	               BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
	               stream.write(bytes);
	               stream.close();
	               if (serverFile.exists()) {
						paperSourceUploadFileSrc = fileName;
					}
		           /**
		            * Preparing data for adding into DB
		            */
		    	   
		    	   String paperPubName 		= paperValid.getPaperPubName();
		    	   String paperJConfName 	= paperValid.getPaperJConfName();
		    	   String paperISSN 		= paperValid.getPaperISSN();
		    	   String paperJIndexCode 	= paperCate.getPCAT_Journal();
		    	   
		    	   int paperPubConHours 	= paperValid.getPaperPubConHours();
		    	   if(papersCateHourBudget != null && !"".equals(papersCateHourBudget.getPCAHOBUD_Hour()))
		    	   {
		    		   paperPubConHours = papersCateHourBudget.getPCAHOBUD_Hour();
		    	   }
		    	   int paperAutConHours 	= (!numberOfAuthors.equals(0)) ? (int) Math.round(paperPubConHours/numberOfAuthors) : 0;
		    	   int paperYear 			= paperValid.getPaperYear();
		    	   String paperVolumn 		= paperValid.getPaperVolumn();
		    	   
		    	   int i_InsertAPaper = paperService.saveAPaper(userCode, paperCatCode, paperPubName, paperJConfName, paperISSN, paperPubConHours, paperAutConHours, 
		    			   											paperYear, paperJIndexCode, paperVolumn, paperAuthors, 
		    			   											paperReportingAcademicDate, paperSourceUploadFileSrc, projectMembers,
		    			   											mPaperController.APPROVE_STATUS_PENDING);
		    	   if(i_InsertAPaper > 0){
		    		   //model.put("status", "Successfully saved a paper: ");
		    		   return "redirect:" + this.baseUrl + "/cp/papers.html";
		    	   }
	    	   }catch (Exception e) {
	    		   System.out.println(e.getStackTrace());
	    		   model.put("status", "You failed to upload " + fileName + " => " + e.getMessage());
	           }
    	   }else{
    		   model.put("err", "Cần phải thêm tác giả của bài báo.");
    	   }
           return "cp.addAPaper";
       }
   }
   
   	/**
	 * Handle request to download an Excel 97-2003 document 
	 */
	@RequestMapping(value = "/downloadExcel", method = RequestMethod.POST)
	public ModelAndView downloadExcel(@Valid @ModelAttribute("paperExcellForm") mPaperExcellValidation paperValidExcell, BindingResult result, Map model, HttpSession session) {
		// Get list reportingYear
	    List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	    model.put("reportingAcademicDate", patentReportingAcademicDateList);
		model.put("papers", status);
		 if(result.hasErrors()) {
	          return new ModelAndView("cp.generate");
	     }else
	     {
			String yearForGenerating = paperValidExcell.getReportingAcademicDate();
			String currentUserName = session.getAttribute("currentUserName").toString();
			String currentUserCode = session.getAttribute("currentUserCode").toString();
		    String userRole = session.getAttribute("currentUserRole").toString();
		    List<mPapers> papersList = paperService.loadPaperListByYear(userRole, currentUserCode, yearForGenerating);
		    
			mStaff staff = staffService.loadStaffByUserCode(currentUserCode);
			model.put("yearOfPaper", paperValidExcell.getReportingAcademicDate());
			if(staff != null){
			    List<mDepartment> departmentList = departmentService.loadDepartmentList();
			    model.put("staffEmail", staff.getStaff_Email());
			    model.put("staffName", staff.getStaff_Name());
			    model.put("staffPhone", staff.getStaff_Phone());
			    model.put("staffCategory", staff.getStaffCategory().getStaff_Category_Name());
			    model.put("staffDepartementName", staff.getDepartment().getDepartment_Name());
			    model.put("staffDepartementCode", staff.getDepartment().getDepartment_Code());
			}
			// return a view which will be resolved by an excel view resolver
			return new ModelAndView("excelView", "papersList", papersList);
	     }
	}
	
	/**
    * Adding a paper
    * @param model
    * @return
    */
   @RequestMapping(value = "/gen-a-paper", method = RequestMethod.GET)
   public String generateAPaper(ModelMap model, HttpSession session) {
	   
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   model.put("reportingAcademicDate", patentReportingAcademicDateList);
	   model.put("papers", status);
	   model.put("paperExcellForm", new mPaperExcellValidation());
       return "cp.generate";
   }
   
   @RequestMapping("/paperdetail/{id}")
   public String editAPaper(ModelMap model, @PathVariable("id") int paperId, HttpSession session) {
	   
	   // Get list reportingYear
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   List<mFaculty> listFaculty = facultyService.loadFacultyList();
	   List<mStaff> staffList = staffService.listStaffs();
	   /*
	    * Put data back to view
	    */
	   model.put("patentReportingAcademicDateList", patentReportingAcademicDateList);
	   model.put("papers", status);
	   model.put("listFaculty", listFaculty);
	   model.put("staffList", staffList);
	   String userRole = session.getAttribute("currentUserRole").toString();
	   String userCode = session.getAttribute("currentUserCode").toString();
	   mPapers papers = paperService.loadAPaperByIdAndUserCode(userRole, userCode, paperId);
	   if(papers != null)
	   {
		   List<PaperStaffs> listPaperStaffs = paperStaffsService.loadPaperListByPaperCode(papers.getPDECL_Code());
		   List<mPaperCategory> paperCategory = paperCategoryService.list();
		   List<mJournal> journalList = journalService.list();
		   List<mPapersCategoryHourBudget> papersCategoryHourBudget = paperCategoryHourBudgetService.loadPaperCategoryHourBudgets();
		   String paperConvertedHours = this.setJsonByListPaperCategory(papersCategoryHourBudget, patentReportingAcademicDateList);
		   String fileUploadName = papers.getPDECL_SourceFile();
		   /*
		    * Put journal list and paper category to view
		    */
		   model.put("paperConvertedHours", paperConvertedHours);
		   model.put("paperCategory", paperCategory);
		   model.put("journalList", journalList);
		   model.put("paperFormEdit", new mPaperValidation());
		   model.put("isFileSourceExists", (!"".equals(fileUploadName) ? 1 : 0));
		   model.put("listPaperStaffs", listPaperStaffs);
		   model.put("paperCate", papers.getPDECL_PaperCategory_Code());
		   model.put("publicationName", papers.getPDECL_PublicationName());
		   model.put("journalName", papers.getPDECL_JournalConferenceName());
		   model.put("ISSN", papers.getPDECL_ISSN());
		   model.put("publicConvertedHours", papers.getPDECL_PublicationConvertedHours());
		   model.put("authorConvertedHours", papers.getPDECL_AuthorConvertedHours());
		   model.put("paperYear", papers.getPDECL_Year());
		   model.put("volumn", papers.getPDECL_Volumn());
		   model.put("authors", papers.getPDECL_AuthorList());
		   model.put("journalIndex", papers.getPDECL_IndexCode());
		   model.put("reportingDate", papers.getPDECL_ReportingAcademicDate());
		   model.put("paperId", paperId);
		   return "cp.editAPaper";
	   }
	   return "cp.notFound404";
   }
   
   /**
    * Adding a paper
    * @param model
    * @return
    */
   @RequestMapping(value = "/edit-a-paper", method = RequestMethod.POST)
   public String updateAPaper(HttpServletRequest request, @Valid @ModelAttribute("paperFormEdit") mPaperValidation paperFormEdit, BindingResult result, Map model, HttpSession session) {
	   String userRole = session.getAttribute("currentUserRole").toString();
   	   String userCode = session.getAttribute("currentUserCode").toString();
	   List<mPaperCategory> paperCategories = paperCategoryService.list();
	   List<mJournal> journalList = journalService.list();
	   List<mPapersCategoryHourBudget> papersCategoryHourBudget = paperCategoryHourBudgetService.loadPaperCategoryHourBudgets();
	   // Get list reportingYear
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   String paperConvertedHours = this.setJsonByListPaperCategory(papersCategoryHourBudget, patentReportingAcademicDateList);
	   List<mFaculty> listFaculty = facultyService.loadFacultyList();
	   List<mStaff> staffList = staffService.listStaffs();
	   int paperId = paperFormEdit.getPaperId();
	   mPapers paper = paperService.loadAPaperByIdAndUserCode(userRole, userCode, paperId);
	   List<PaperStaffs> listPaperStaffs = new ArrayList();
	   if(paper != null){
		   listPaperStaffs = paperStaffsService.loadPaperListByPaperCode(paper.getPDECL_Code());
	   }
	   
	   /*
	    * Put data back to view
	    */
	   model.put("patentReportingAcademicDateList", patentReportingAcademicDateList);
	   model.put("paperConvertedHours", paperConvertedHours);
	   model.put("paperCategory", paperCategories);
	   model.put("listPaperStaffs", listPaperStaffs);
	   model.put("listFaculty", listFaculty);
	   model.put("staffList", staffList);
	   model.put("journalList", journalList);
	   model.put("papers", status);
	   // Add the saved validationForm to the model  
      if (result.hasErrors()) {
    	   model.put("paperCate", paperFormEdit.getPaperCatCode());
		   model.put("publicationName", paperFormEdit.getPaperPubName());
		   model.put("journalName", paperFormEdit.getPaperJConfName());
		   model.put("ISSN", paperFormEdit.getPaperISSN());
		   model.put("publicConvertedHours", paperFormEdit.getPaperPubConHours());
		   model.put("authorConvertedHours", paperFormEdit.getPaperAutConHours());
		   model.put("paperYear", paperFormEdit.getPaperYear());
		   model.put("volumn", paperFormEdit.getPaperVolumn());
		   model.put("authors", paperFormEdit.getPaperAuthorList());
		   model.put("journalIndex", paperFormEdit.getPaperJIndexCode());
		   model.put("reportingDate", paperFormEdit.getPatentReportingAcademicDate());
		   
           return "cp.editAPaper";
      }else
      {
    	   /**
   	       * Uploading file
	   	   */
	   	   MultipartFile paperSourceUploadFile = paperFormEdit.getPaperFileUpload();
	   	   String fileName = paperSourceUploadFile.getOriginalFilename();
	   	   String paperSourceUploadFileSrc = "";
	   	   String paperCate = paperFormEdit.getPaperCatCode();
	   	   try {
	   		   String[] projectMembers = request.getParameterValues("projectMembers");
	    	   if(projectMembers != null && projectMembers.length > 0){
		   		   	//	Creating Date in java with today's date.
		   		   	Date currentDate = new Date();
		   		   	//change date into string yyyyMMdd format example "20110914"
		   		   	SimpleDateFormat dateformatyyyyMMdd = new SimpleDateFormat("HHmmssddMMyyyy");
		   		   	String sCurrentDate = dateformatyyyyMMdd.format(currentDate);
	    		   
		    	   	byte[] bytes = paperSourceUploadFile.getBytes();
		    	   	String path = request.getServletContext().getRealPath("uploads");
		    	   	System.out.println("PaperController::editAPaper, path = " + path);
		    	   	File dir = new File(path+ "/papers");
		           	if (!dir.exists()){
		        	   dir.mkdirs();
		           	}
		           	
		           	if(!fileName.equals("")){
		        	   // Create a file
		           	   String currentUserName 	= session.getAttribute("currentUserName").toString();
		 	           fileName = currentUserName + "_" + sCurrentDate + "_" + fileName; 
			           File serverFile = new File(dir.getAbsolutePath()+ File.separator + fileName);
			           // Save data into file
			           BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
			           stream.write(bytes);
			           stream.close();
			           
			           
			           serverFile = new File(dir.getAbsolutePath()+ File.separator + fileName);
			           
			           //if(serverFile.exists()){
		           	   		paperSourceUploadFileSrc = dir.getAbsolutePath()+ File.separator + fileName;
			           //}else{
			        	   //System.out.println("PaperController::editAPaper, fileName = " + fileName + ", serverFile not exists");
			           //}
		           	}
		           
		           	System.out.println("PaperController::editAPaper, paperCourseUpLoadFileSrc = " + paperSourceUploadFileSrc);
		           	
		    	  	/**
		    	  	 * Prepare data for inserting DB
		    	  	 */
			   	  	mPaperCategory paperCategory = paperCategoryService.getPaperCateByCode(paperCate);
			   	  	mPapersCategoryHourBudget papersCateHourBudget = paperCategoryHourBudgetService.loadPaperCategoryHourBudgetByCategoryAndYear(paperCate, paperFormEdit.getPatentReportingAcademicDate());
			   	  	String authors = paperFormEdit.getPaperAuthorList();
		   	   		String[] paperAuthorsList 	= authors.trim().split("\\,");
		   	   		Integer numberOfAuthors 		= paperAuthorsList.length;
		   	   		for(int i=0; i<paperAuthorsList.length; i++){
			   		   if(paperAuthorsList[i].equals("")){
			   			   numberOfAuthors--;
			   		   }
		   	   		}
		   	   
		   	   		String publicationName = paperFormEdit.getPaperPubName();
		   	   		String journalName = paperFormEdit.getPaperJConfName();
		   	   		String ISSN = paperFormEdit.getPaperISSN();
		   	   		String paperReportingAcademicDate = paperFormEdit.getPatentReportingAcademicDate();
		   	   		
		   	   		int publicConvertedHours = paperFormEdit.getPaperPubConHours();
		   	   		if(papersCateHourBudget != null && !"".equals(papersCateHourBudget.getPCAHOBUD_Hour()))
		   	   		{
		   	   			 publicConvertedHours = papersCateHourBudget.getPCAHOBUD_Hour();
		   	   		}
		   	   		int authorConvertedHours = (!numberOfAuthors.equals(0)) ? (int) Math.round(publicConvertedHours/numberOfAuthors) : 0;
		   	   		int paperYear = paperFormEdit.getPaperYear();
		   	   		String volumn = paperFormEdit.getPaperVolumn();
		   	   		String journalIndex = paperCategory.getPCAT_Journal();
		   	   		
		   	   		paperService.editAPaper(userRole, userCode, paperId, paperCate, publicationName, 
		   	   								journalName, ISSN, publicConvertedHours, authorConvertedHours, paperYear, volumn, 
		   	   								authors, journalIndex, paperReportingAcademicDate, paperSourceUploadFileSrc, projectMembers);
		   	   		return "redirect:" + this.baseUrl + "/cp/papers.html";
	    	   }else{
	    		   model.put("err", "Cần phải thêm tác giả của bài báo.");
	    	   }
	   	   }catch (Exception e) {
   		   		model.put("status", "You failed to upload " + fileName + " => " + e.getMessage());
	   	   }
	   	   return "cp.editAPaper";
      }
   }
   
   /**
    * Show list all papers
    * @param model
    * @return
    */
   @RequestMapping(value = "/remove-a-paper/{id}", method = RequestMethod.GET)
   public String removeAPaper(ModelMap model, @PathVariable("id") int paperId, HttpSession session) {
	   String userCode = session.getAttribute("currentUserCode").toString();
	   String userRole = session.getAttribute("currentUserRole").toString();
	   model.put("papers", status);
	   mPapers paper = paperService.loadAPaperByIdAndUserCode(userRole, userCode, paperId);
	   if(paper != null){
		   paperService.removeAPaper(paperId);
		   List<mPapers> papersList = paperService.loadPaperListByStaff(userRole, userCode);
		   List<PaperStaffs> listPaperStaffs = paperStaffsService.loadPaperListByPaperCode(paper.getPDECL_Code());
		   if(listPaperStaffs != null)
		   {
			   for (PaperStaffs paperStaffs : listPaperStaffs) {
				   paperStaffsService.removeAPaperStaff(paperStaffs);
			   }
		   }
		   model.put("papersList", papersList);
		   return "cp.papers";
	   }
	   return "cp.notFound404";
   }
   
   /**
    * Download a file source
    * @param model
    * @return
    */
   @RequestMapping(value = "/download-paper/{id}", method = RequestMethod.GET)
   public void downloadPaper(ModelMap model, @PathVariable("id") int paperId, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
	   String userCode = session.getAttribute("currentUserCode").toString();
	   String userRole = session.getAttribute("currentUserRole").toString();
	   model.put("papers", status);
	   mPapers paper = paperService.loadAPaperByIdAndUserCode(userRole, userCode, paperId);
	   if(paper.getPDECL_SourceFile() != null){
		   ServletContext context = request.getServletContext();
		   
		   System.out.println(name() + "::downloadPaper, SourceFile = " + paper.getPDECL_SourceFile());
		   String fullfilename = establishFullFileNameForDownload(paper.getPDECL_SourceFile(), userCode, request);
		   System.out.println(name() + "::downloadPaper, SourceFile = " + paper.getPDECL_SourceFile() + ", fullfilname = " + fullfilename);
		   //File downloadFile = new File(paper.getPDECL_SourceFile());
		   File downloadFile = new File(fullfilename);
		   
		   if(downloadFile.exists()){
		       FileInputStream inputStream = new FileInputStream(downloadFile);
		       
		       String mimeType = context.getMimeType(paper.getPDECL_SourceFile());
		        if (mimeType == null) {
		            // set to binary type if MIME mapping not found
		            mimeType = "application/octet-stream";
		        }
		        
		        // set content attributes for the response
		        response.setContentType(mimeType);
		        response.setContentLength((int) downloadFile.length());
		        
		        // set headers for the response
		        String headerKey = "Content-Disposition";
		        String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
		        response.setHeader(headerKey, headerValue);
		        
		        // get output stream of the response
		        OutputStream outStream = response.getOutputStream();
		 
		        byte[] buffer = new byte[BUFFER_SIZE];
		        int bytesRead = -1;
		 
		        // write bytes read from the input stream into the output stream
		        while ((bytesRead = inputStream.read(buffer)) != -1) {
		            outStream.write(buffer, 0, bytesRead);
		        }
		 
		        inputStream.close();
		        outStream.close();
		   }
	   }
   }
}

