package vn.webapp.modules.timetablemanagement.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="tblregularcoursetimetableentry")
public class mRegularCourseTimeTableEntry implements Serializable{
	@Id 
	@GeneratedValue
	private int RCTTE_ID;
	@Override
	public String toString() {
		return "mRegularCourseTimeTableEntry [RCTTE_ID=" + RCTTE_ID + ", RCTTE_AcaYear_Code=" + RCTTE_AcaYear_Code
				+ ", RCTTE_Semester=" + RCTTE_Semester + ", RCTTE_Semester_Type=" + RCTTE_Semester_Type
				+ ", RCTTE_Class_Code=" + RCTTE_Class_Code + ", RCTTE_Course_Code=" + RCTTE_Course_Code
				+ ", RCTTE_Code=" + RCTTE_Code + ", RCTTE_Class_Type=" + RCTTE_Class_Type + "]";
	}
	private String RCTTE_AcaYear_Code;
	private int RCTTE_Semester;
	private String RCTTE_Semester_Type;
	private String RCTTE_Class_Code;
	private String RCTTE_Course_Code;
	private String RCTTE_Code;
	private String RCTTE_Class_Type;
	private int RCTTE_Course_MaxRegister;
	public int getRCTTE_Course_MaxRegister() {
		return RCTTE_Course_MaxRegister;
	}
	public void setRCTTE_Course_MaxRegister(int rCTTE_Course_MaxRegister) {
		RCTTE_Course_MaxRegister = rCTTE_Course_MaxRegister;
	}
	public int getRCTTE_ID() {
		return RCTTE_ID;
	}
	public void setRCTTE_ID(int rCTTE_ID) {
		RCTTE_ID = rCTTE_ID;
	}
	public String getRCTTE_AcaYear_Code() {
		return RCTTE_AcaYear_Code;
	}
	public void setRCTTE_AcaYear_Code(String rCTTE_AcaYear_Code) {
		RCTTE_AcaYear_Code = rCTTE_AcaYear_Code;
	}
	public int getRCTTE_Semester() {
		return RCTTE_Semester;
	}
	public void setRCTTE_Semester(int rCTTE_Semester) {
		RCTTE_Semester = rCTTE_Semester;
	}
	public String getRCTTE_Semester_Type() {
		return RCTTE_Semester_Type;
	}
	public void setRCTTE_Semester_Type(String rCTTE_Semester_Type) {
		RCTTE_Semester_Type = rCTTE_Semester_Type;
	}
	public String getRCTTE_Class_Code() {
		return RCTTE_Class_Code;
	}
	public void setRCTTE_Class_Code(String rCTTE_Class_Code) {
		RCTTE_Class_Code = rCTTE_Class_Code;
	}
	public String getRCTTE_Course_Code() {
		return RCTTE_Course_Code;
	}
	public void setRCTTE_Course_Code(String rCTTE_Course_Code) {
		RCTTE_Course_Code = rCTTE_Course_Code;
	}
	public String getRCTTE_Code() {
		return RCTTE_Code;
	}
	public void setRCTTE_Code(String rCTTE_Code) {
		RCTTE_Code = rCTTE_Code;
	}
	public String getRCTTE_Class_Type() {
		return RCTTE_Class_Type;
	}
	public void setRCTTE_Class_Type(String rCTTE_Class_Type) {
		RCTTE_Class_Type = rCTTE_Class_Type;
	}
	

}
