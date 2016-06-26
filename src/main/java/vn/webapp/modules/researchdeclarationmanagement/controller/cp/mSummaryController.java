package vn.webapp.modules.researchdeclarationmanagement.controller.cp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vn.webapp.controller.BaseWeb;
import vn.webapp.modules.researchdeclarationmanagement.model.mAcademicYear;
import vn.webapp.modules.researchdeclarationmanagement.model.mPapers;
import vn.webapp.modules.researchdeclarationmanagement.model.mPatents;
import vn.webapp.modules.researchdeclarationmanagement.model.mTopics;
import vn.webapp.modules.researchdeclarationmanagement.service.mAcademicYearService;
import vn.webapp.modules.researchdeclarationmanagement.service.mJournalService;
import vn.webapp.modules.researchdeclarationmanagement.service.mPaperService;
import vn.webapp.modules.researchdeclarationmanagement.service.mPatentService;
import vn.webapp.modules.researchdeclarationmanagement.service.tProjectCategoryService;
import vn.webapp.modules.researchdeclarationmanagement.service.tProjectService;
import vn.webapp.modules.researchdeclarationmanagement.validation.mExcel01CN02CNValidation;
import vn.webapp.modules.researchdeclarationmanagement.validation.mPaperExcellValidation;
import vn.webapp.modules.researchdeclarationmanagement.validation.mSummaryExcelValidation;
import vn.webapp.modules.usermanagement.model.mDepartment;
import vn.webapp.modules.usermanagement.model.mStaff;
import vn.webapp.modules.usermanagement.service.mDepartmentService;
import vn.webapp.modules.usermanagement.service.mStaffService;

@Controller("cpmSummary")
@RequestMapping(value = {"/cp"})
public class mSummaryController extends BaseWeb {
	@Autowired
    private tProjectService tProjectService;
    
    @Autowired
    private tProjectCategoryService tProjectCategoryService;
    
    @Autowired
    private mJournalService journalService;
    
    @Autowired
    private mStaffService staffService;
    
    @Autowired
    private mDepartmentService departmentService;
    
    @Autowired
    private mPatentService patentService;
    
    @Autowired
    private mAcademicYearService academicYearService;
    
    @Autowired
    private mPaperService paperService;
    
    static final String status = "summary";
    
   
   	/**
	 * Handle request to download an Excel 97-2003 document 
	 */
	@RequestMapping(value = "/summaryExcel", method = RequestMethod.POST)
	public ModelAndView downloadSummaryExcel(@Valid @ModelAttribute("summaryExcelForm") mSummaryExcelValidation summaryValidExcell, BindingResult result, Map model, HttpSession session) {
		List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
		List<mDepartment> departmentList = departmentService.loadDepartmentList();
		/**
	    * Put back to a suitable view
	    */
	    model.put("reportingAcademicDate", patentReportingAcademicDateList);
	    model.put("departmentList", departmentList);
		 
	    // create some sample data
		 if(result.hasErrors()) {
	          return new ModelAndView("cp.generateSummary");
	     }else
	     {
	    	/**
	    	 * Get list of all Projects (Topics)
	    	 */
			String yearForGenerating = summaryValidExcell.getReportingAcademicDate();
			String departmentCode = summaryValidExcell.getDepartment();
			
			mDepartment department = departmentService.loadADepartmentByCodes(departmentCode, "SOICT");
			String currentUserName = session.getAttribute("currentUserName").toString();
			String currentUserCode = session.getAttribute("currentUserCode").toString();
		    String userRole = session.getAttribute("currentUserRole").toString();
		    
		    List<mStaff> staffs = staffService.listStaffsByDepartment(departmentCode);
		    List<mTopics> topicsList = tProjectService.loadTopicSummaryListByYear(yearForGenerating);
		    List<mPapers> papersList = paperService.loadPaperSummaryListByYear(yearForGenerating);
		    
		    /**
		     * Preparing data for papers summary view 
		     */
		    int iTotalPaperConvertedHours = 0;
    		int iTotalPaperJournal = 0;
    		int iTotalPaperConferenceJournal = 0;
    		
    		int iTotalTopicConvertedHours = 0;
    		int iTotalTopicNational = 0;
    		int iTotalTopicMinistry = 0;
    		int iTotalTopicFoundation = 0;
    		int iTotalTopicInternational = 0;
    		int iTotalTopicUniversity = 0;
    		
    		String staffName = "";
    		List<List<String>> summaryPapersList = new ArrayList<>();
    		List<List<String>> summaryProjectsList = new ArrayList<>();
    		Map<String, List<mPapers>> summaryAllStaffsList = new HashMap<String, List<mPapers>>(); 
    		
		    if(staffs != null && papersList != null){
		    	
		    	for(mStaff staff : staffs){
		    		// Set and reset info for a staff
		    		iTotalPaperConvertedHours = 0;
		    		iTotalPaperJournal = 0;
		    		iTotalPaperConferenceJournal = 0;
		    		
		    		iTotalTopicConvertedHours = 0;
		    		iTotalTopicNational = 0;
		    		iTotalTopicMinistry = 0;
		    		iTotalTopicFoundation = 0;
		    		iTotalTopicInternational = 0;
		    		iTotalTopicUniversity = 0;
		    		
		    		staffName = staff.getStaff_Name();
		    		List<String> summaryPaper = new ArrayList<>();
		    		List<String> summaryTopic = new ArrayList<>();
		    		List<mPapers> summaryStaff = new ArrayList<>();
		    		// Set data papers
		    		for(mPapers paper : papersList)
		    		{
		    			if(staff.getStaff_User_Code().equals(paper.getPDECL_User_Code())){
		    				iTotalPaperConvertedHours += paper.getPDECL_AuthorConvertedHours();
		    				if(paper.getPDECL_PaperCategory_Code().equals("JINT_SCI") || paper.getPDECL_PaperCategory_Code().equals("JINT_Other") || paper.getPDECL_PaperCategory_Code().equals("JINT_SCIE"))
		    				{
		    					iTotalPaperJournal++;
		    				}else{
		    					iTotalPaperConferenceJournal++;
		    				}
		    				summaryStaff.add(paper);
		    			}
		    		}
		    		// Build a paper summary
		    		summaryPaper.add(staffName);
		    		summaryPaper.add(Integer.toString(iTotalPaperJournal));
		    		summaryPaper.add(Integer.toString(iTotalPaperConferenceJournal));
		    		summaryPaper.add(Integer.toString(iTotalPaperConvertedHours));
		    		
		    		// Build list of paper summary
		    		summaryPapersList.add(summaryPaper);
		    		
		    		// Build list of staff summary 
		    		if(summaryStaff != null){
		    			summaryAllStaffsList.put(staffName, summaryStaff);
		    		}
		    		
		    		// Set data topics
		    		for(mTopics topic : topicsList){
		    			if(staff.getStaff_User_Code().equals(topic.getPROJDECL_User_Code())){
		    				iTotalTopicConvertedHours += topic.getPROJDECL_AuthorConvertedHours();
		    				if(topic.getPROJDECL_ProjCategory_Code().equals("NATIONAL")){
		    					iTotalTopicNational++;
		    				}else if(topic.getPROJDECL_ProjCategory_Code().equals("EMINISTRY")){
		    					iTotalTopicMinistry++;
		    				}else if(topic.getPROJDECL_ProjCategory_Code().equals("SMINISTRY")){
		    					iTotalTopicFoundation++;
		    				}else if(topic.getPROJDECL_ProjCategory_Code().equals("INTERNATIONAL")){
		    					iTotalTopicInternational++;
		    				}else if(topic.getPROJDECL_ProjCategory_Code().equals("UNIVERSTITY")){
		    					iTotalTopicUniversity++;
		    				}
		    			}
		    		}
		    		summaryTopic.add(staffName);
		    		summaryTopic.add(Integer.toString(iTotalTopicNational));
		    		summaryTopic.add(Integer.toString(iTotalTopicMinistry));
		    		summaryTopic.add(Integer.toString(iTotalTopicFoundation));
		    		summaryTopic.add(Integer.toString(iTotalTopicInternational));
		    		summaryTopic.add(Integer.toString(iTotalTopicUniversity));
		    		summaryTopic.add("");
		    		summaryTopic.add(Integer.toString(iTotalTopicConvertedHours));
		    		summaryProjectsList.add(summaryTopic);
		    	}
		    }
		    
		    /**
		     * Put data to view
		     */
		    model.put("summaryPapersList", summaryPapersList);
		    model.put("summaryProjectsList", summaryProjectsList);
		    model.put("summaryAllStaffsList", summaryAllStaffsList);
			model.put("yearOfPaper", yearForGenerating);
			model.put("departmentCode", departmentCode);
			if(department != null){
			    model.put("staffDepartementName",department.getDepartment_Name());
			}
			// return a view which will be resolved by an excel view resolver
			return new ModelAndView("excelSummaryView", "topicsList", topicsList);
	     }
	}
	
	/**
    * Generating summary
    * @param model
    * @return
    */
   @RequestMapping(value = "/summary", method = RequestMethod.GET)
   public String generateASummary(ModelMap model, HttpSession session) {
	   /**
	    * Get List Academic Year and DepartmentList
	    */
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   List<mDepartment> departmentList = departmentService.loadDepartmentList();
	   
	   /**
	    * Put back to a suitable view
	    */
	   model.put("reportingAcademicDate", patentReportingAcademicDateList);
	   model.put("departmentList", departmentList);
	   model.put("summaryExcelForm", new mSummaryExcelValidation());
       return "cp.generateSummary";
   }
   
   /**
    * Generate excel form 01CN-02CN
    */
   public String name(){
	   return "SummaryController";
   }
   @RequestMapping(value = "/generate-excel-01cn-02cn", method = RequestMethod.GET)
   public String generateExcel01CN02CN(ModelMap model, HttpSession session){
	   String userRole = session.getAttribute("currentUserRole").toString();
	   String userCode = session.getAttribute("currentUserCode").toString();
	   mStaff staff = staffService.loadStaffByUserCode(userCode);
	   
	   List<mAcademicYear> lstYears = academicYearService.list();
	   List<mStaff> lstStaffs = null;
	   if(userRole.equals("ROLE_USER")){
		   lstStaffs = new ArrayList<mStaff>();		   
		   lstStaffs.add(staff);
	   }else{
		   lstStaffs = staffService.listStaffs();
	   }
	   model.put("reportingYear", lstYears);
	   model.put("listStaffs", lstStaffs);
	   model.put("staffname", staff.getStaff_Name());
	   
	   //model.put("generateExcelForm01CN02CN", new PaperExcellValidation());
	   model.put("generateExcelForm01CN02CN", new mExcel01CN02CNValidation());
	   return "cp.generateForm01CN02CN";
   }
   
   
   @RequestMapping(value = "/generateExcel01CN02CN", method = RequestMethod.POST)
   public ModelAndView downloadExcel01CN02CN(@Valid @ModelAttribute("generateExcelForm01CN02CN") mExcel01CN02CNValidation paperValidExcel, BindingResult result, Map model, HttpSession session){
	   if(result.hasErrors()) {
	         return new ModelAndView("cp.generateSummary");
	     }else {
	    	 String userCode = paperValidExcel.getStaffCode(); 
	    	 mStaff staff = staffService.loadStaffByUserCode(userCode);
	    	 String yearGenerate = paperValidExcel.getReportingAcademicDate();
	 		//String userName = session.getAttribute("currentUserName").toString();
	 		//String userCode = session.getAttribute("currentUserCode").toString();
	 		String userRole = session.getAttribute("currentUserRole").toString();
	 		
	 		model.put("yearOfPaper", paperValidExcel.getReportingAcademicDate());
	 		if(staff != null){
	 			model.put("staffCode", userCode);
	 		    model.put("staffEmail", staff.getStaff_Email());
	 		    model.put("staffName", staff.getStaff_Name());
	 		    model.put("staffPhone", staff.getStaff_Phone());
	 		    model.put("staffCategory", staff.getStaffCategory().getStaff_Category_Name());
	 		    model.put("staffDepartementName", staff.getDepartment().getDepartment_Name());
	 		    model.put("staffDepartementCode", staff.getDepartment().getDepartment_Code());
	 		}
	 		
	 		List<mPapers> listPapers = paperService.loadPaperListByYear(userRole, userCode, yearGenerate);
	 		List<mTopics> listTopics = tProjectService.loadTopicListByYear(userRole, userCode, yearGenerate);
	 		List<mPatents> listPatents = patentService.loadPatentListByYear(userRole, userCode, yearGenerate);
	 		model.put("listPapers", listPapers);
	 		model.put("listTopics", listTopics);
	 		model.put("listPatents", listPatents);
	 		return new ModelAndView("excel01CN02CN","listPapers", listPapers);
	     }
	   
   }
   
   /**
    * Generating kv 03
    * @param model
    * @return
    */
   @RequestMapping(value = "/summary-kv03", method = RequestMethod.GET)
   public String generateASummaryKV03(ModelMap model, HttpSession session) {
	   /**
	    * Get List Academic Year and DepartmentList
	    */
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   /**
	    * Put back to a suitable view
	    */
	   model.put("reportingAcademicDate", patentReportingAcademicDateList);
	   model.put("summaryExcelFormKV03", new mPaperExcellValidation());
       return "cp.generateSummaryKV03";
   }
   
   @RequestMapping(value = "/summary-kv-list-papers", method = RequestMethod.GET)
   public String generateListPapers(ModelMap model, HttpSession session) {
	   /**
	    * Get List Academic Year and DepartmentList
	    */
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   /**
	    * Put back to a suitable view
	    */
	   model.put("reportingAcademicDate", patentReportingAcademicDateList);
	   model.put("listpapers", new mPaperExcellValidation());
       return "cp.generateListPapers";
   }
   
   /**
	 * Handle request to download an Excel 97-2003 document 
	 */
	@RequestMapping(value = "/summaryExcelKV03", method = RequestMethod.POST)
	public ModelAndView downloadSummaryExcelKV03(@Valid @ModelAttribute("summaryExcelFormKV03") mPaperExcellValidation summaryValidExcell, BindingResult result, Map model, HttpSession session) {
		List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
		List<mDepartment> departmentList = departmentService.loadDepartmentList();
		/**
	    * Put back to a suitable view
	    */
	    model.put("reportingAcademicDate", patentReportingAcademicDateList);
	    model.put("departmentList", departmentList);
		 
	    // create some sample data
		 if(result.hasErrors()) {
	          return new ModelAndView("cp.generateSummary");
	     }else
	     {
	    	/**
	    	 * Get list of all Projects (Topics)
	    	 */
			String yearForGenerating = summaryValidExcell.getReportingAcademicDate();
			
			String currentUserName = session.getAttribute("currentUserName").toString();
			String currentUserCode = session.getAttribute("currentUserCode").toString();
		    String userRole = session.getAttribute("currentUserRole").toString();
		    
		    List<mPapers> papersList = paperService.loadPaperSummaryListByYear(yearForGenerating);
		    
		    List<mPapers> papersListJDOM_Other = new ArrayList<mPapers>(); // Tap chi trong nuoc
		    List<mPapers> papersListJINT = new ArrayList<mPapers>(); // Tap chi nuoc ngoai
		    List<mPapers> papersListCDOM_Other = new ArrayList<mPapers>(); // Hoi nghi trong nuoc
		    List<mPapers> papersListCINT_Other = new ArrayList<mPapers>(); // Hoi nghi nuoc ngoai
		    
		    if(papersList != null)
		    {
			    for(mPapers oPaper : papersList)
			    {
			    	if(oPaper.getPaperCategory().getPCAT_Code().equals("CINT_Other")){
			    		papersListCINT_Other.add(oPaper);
			    	}else if(oPaper.getPaperCategory().getPCAT_Code().equals("CDOM_Other"))
			    	{
			    		papersListCDOM_Other.add(oPaper);
			    	}else if(oPaper.getPaperCategory().getPCAT_Code().equals("JDOM_Other"))
			    	{
			    		papersListJDOM_Other.add(oPaper);
			    	}else{
			    		papersListJINT.add(oPaper);
			    	}
			    }
		    }
		    
		    model.put("papersListJDOM_Other", papersListJDOM_Other);
		    model.put("papersListJINT", papersListJINT);
		    model.put("papersListCDOM_Other", papersListCDOM_Other);
		    model.put("papersListCINT_Other", papersListCINT_Other);
		    
		    /**
		     * Preparing data for papers summary view 
		     */
		    model.put("yearOfPaper", yearForGenerating);
			// return a view which will be resolved by an excel view resolver
			return new ModelAndView("excelSummaryViewKV03", "papersList", papersList);
	     }
	}
	
	/**
    * Generating kv 01
    * @param model
    * @return
    */
   @RequestMapping(value = "/summary-kv01", method = RequestMethod.GET)
   public String generateASummaryKV01(ModelMap model, HttpSession session) {
	   /**
	    * Get List Academic Year and DepartmentList
	    */
	   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
	   /**
	    * Put back to a suitable view
	    */
	   
	   
	   model.put("reportingAcademicDate", patentReportingAcademicDateList);
	   model.put("summaryExcelFormKV01", new mPaperExcellValidation());
       return "cp.generateSummaryKV01";
   }
   
   /**
	 * Handle request to download an Excel 97-2003 document 
	 */
	@RequestMapping(value = "/summaryExcelKV01", method = RequestMethod.POST)
	public ModelAndView downloadSummaryExcelKV01(@Valid @ModelAttribute("summaryExcelFormKV01") mPaperExcellValidation summaryValidExcell, BindingResult result, Map model, HttpSession session) {
		List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
		List<mDepartment> departmentList = departmentService.loadDepartmentList();
		/**
	    * Put back to a suitable view
	    */
	    model.put("reportingAcademicDate", patentReportingAcademicDateList);
	    model.put("departmentList", departmentList);
		 
	    // create some sample data
		 if(result.hasErrors()) {
	          return new ModelAndView("cp.generateSummary");
	     }else
	     {
	    	/**
	    	 * Get list of all Projects (Topics)
	    	 */
			String yearForGenerating = summaryValidExcell.getReportingAcademicDate();
			List<mPapers> papersList = paperService.loadPaperSummaryListByYear(yearForGenerating);
			//List<mPatents> patentsList = patentService.loadPatentSummaryListByYear(yearForGenerating);
			List<mTopics> topicList = tProjectService.loadTopicSummaryListByYear(yearForGenerating);
			
			Map<String, Map<String, List<Integer>>> summaryAllDepartmentStaffList = new HashMap<String, Map<String, List<Integer>>>();
		    List<mDepartment> departments = departmentService.loadDepartmentList();
		    
		    /**
		     * Preparing data for generating
		     */
		    int iTotalConvertedHours = 0; // Total for the 3rd column
		    int iTotalStaffConvertedHours = 0; // Total for the 3rd header
		    int iTotalPaperConvertedHours = 0; // Total for paper
		    int iTotalPaperOfAStaffConvertedHours = 0; // Total for all papers of a Staff
		    //int iTotalPatentConvertedHours = 0; // Total for patent
		    //int iTotalPatentOfAStaffConvertedHours = 0; // Total for all patents of a Staff
		    int iTotalProjectConvertedHours = 0; // Total for all projects
		    int iTotalProjectOfAStaffConvertedHours = 0; // Total for all projects of a Staff
		    
		    String staffName = "";
		    if(departments != null)
		    {
		    	for(mDepartment department : departments)
		    	{
				   List<mStaff> staffs = staffService.listStaffsByDepartment(department.getDepartment_Code());
				   Map<String, List<Integer>> summaryAllStaffsListTemp = new HashMap<String, List<Integer>>();
				   for(mStaff staff : staffs)
				   {
					   // Set and reset info for a staff
					   staffName = staff.getStaff_Name();
					   iTotalPaperOfAStaffConvertedHours = 0;
					  // iTotalPatentOfAStaffConvertedHours = 0;
					   iTotalProjectOfAStaffConvertedHours = 0;
					   List<mPapers> summaryStaff = new ArrayList<>();
					   List<Integer> listConvertedHours = new ArrayList<>();
					   for(mPapers paper : papersList)
					   {
			    			if(staff.getStaff_User_Code().equals(paper.getPDECL_User_Code())){
			    				iTotalPaperConvertedHours += paper.getPDECL_AuthorConvertedHours();
			    				iTotalPaperOfAStaffConvertedHours += paper.getPDECL_AuthorConvertedHours();
			    			}
					   }
					   
					   /*
					   for(Patents patent : patentsList)
					   {
						   if(staff.getStaff_User_Code().equals(patent.getPAT_User_Code())){
							    iTotalPatentConvertedHours += patent.getPAT_AuthorConvertedHours();
							    iTotalPatentOfAStaffConvertedHours += patent.getPAT_AuthorConvertedHours();
			    			}
					   }
					   */
					   for(mTopics t : topicList)
					   {
						   if(staff.getStaff_User_Code().equals(t.getPROJDECL_User_Code())){
							    iTotalProjectConvertedHours += t.getPROJDECL_AuthorConvertedHours();
							    iTotalProjectOfAStaffConvertedHours += t.getPROJDECL_AuthorConvertedHours();
			    			}
					   }
					   //iTotalStaffConvertedHours = iTotalPaperOfAStaffConvertedHours + iTotalPatentOfAStaffConvertedHours;
					   iTotalStaffConvertedHours = iTotalPaperOfAStaffConvertedHours + iTotalProjectOfAStaffConvertedHours;
					   listConvertedHours.add(iTotalPaperOfAStaffConvertedHours);
					   //listConvertedHours.add(iTotalPatentOfAStaffConvertedHours);
					   listConvertedHours.add(iTotalProjectOfAStaffConvertedHours);
					   
					   listConvertedHours.add(iTotalStaffConvertedHours);
					   
					   summaryAllStaffsListTemp.put(staffName, listConvertedHours);
				   }
				   summaryAllDepartmentStaffList.put(department.getDepartment_Name(), summaryAllStaffsListTemp);
		    	}
		    	//iTotalConvertedHours = iTotalPaperConvertedHours + iTotalPatentConvertedHours;
		    	iTotalConvertedHours = iTotalPaperConvertedHours + iTotalProjectConvertedHours;
		    }
			
			String currentUserName = session.getAttribute("currentUserName").toString();
			String currentUserCode = session.getAttribute("currentUserCode").toString();
		    String userRole = session.getAttribute("currentUserRole").toString();
		    
		    /**
		     * Preparing data for papers summary view 
		     */
		    model.put("iTotalPaperConvertedHours", iTotalPaperConvertedHours);
		    //model.put("iTotalPatentConvertedHours", iTotalPatentConvertedHours);
		    model.put("iTotalProjectConvertedHours", iTotalProjectConvertedHours);
		    model.put("iTotalConvertedHours", iTotalConvertedHours);
		    model.put("summaryAllDepartmentStaffList", summaryAllDepartmentStaffList);
		    model.put("yearOfPaper", yearForGenerating);
			// return a view which will be resolved by an excel view resolver
			return new ModelAndView("excelSummaryViewKV01", "papersList", papersList);
	     }
	}
	
	/**
	    * Generating isi 02
	    * @param model
	    * @return
	    */
	   @RequestMapping(value = "/summary-isi02", method = RequestMethod.GET)
	   public String generateASummaryISI02(ModelMap model, HttpSession session) {
		   /**
		    * Get List Academic Year and DepartmentList
		    */
		   List<mAcademicYear> patentReportingAcademicDateList = academicYearService.list();
		   /**
		    * Put back to a suitable view
		    */
		   model.put("reportingAcademicDate", patentReportingAcademicDateList);
		   model.put("summaryExcelFormISI02", new mPaperExcellValidation());
	       return "cp.generateSummaryISI02";
	   }
	   
	   /**
		 * Handle request to download an Excel 97-2003 document 
		 */
		@RequestMapping(value = "/summaryExcelISI02", method = RequestMethod.POST)
		public ModelAndView downloadSummaryExcelISI02(@Valid @ModelAttribute("summaryExcelFormISI02") mPaperExcellValidation summaryValidExcell, BindingResult result, Map model, HttpSession session) {
			 
		    // create some sample data
			 if(result.hasErrors()) {
		          return new ModelAndView("cp.generateSummary");
		     }else
		     {
		    	/**
		    	 * Get list of all Projects (Topics)
		    	 */
		    	 String yearGenerate = summaryValidExcell.getReportingAcademicDate();
		 		String userName = session.getAttribute("currentUserName").toString();
		 		String userCode = session.getAttribute("currentUserCode").toString();
		 		String userRole = session.getAttribute("currentUserRole").toString();
		 		
		 		System.out.println("ISIPapersExcelController::generateISIPaper, userName = " + userName + ".....");
		 		
		 		model.put("year", yearGenerate);
		 		
		 		List<mPapers> listPapers = paperService.loadPaperListByYear("SUPER_ADMIN", userCode, yearGenerate);
		 		model.put("listPapers", listPapers);
		 		
		 		return new ModelAndView("excelSummaryViewISI02","",null);
		     }
		}
}
