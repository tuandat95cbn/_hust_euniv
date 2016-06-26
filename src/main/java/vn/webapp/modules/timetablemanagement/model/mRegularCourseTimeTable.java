package vn.webapp.modules.timetablemanagement.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;


@Entity
@Table(name="tblregularcoursetimetable")
public class mRegularCourseTimeTable implements Serializable {
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int RCTT_ID;
	
	private String 	RCTT_RCTTE_Code;
	private String RCTT_Code;
	private int RCTT_Day;
	private String 	RCTT_Slots;
	private String RCTT_Weeks;
	private String 	RCTT_Room_Code;
	@Formula("length(RCTT_Slots)")
	private int lengthRCTT_Slots;
	
	public int getLengthRCTT_Slots() {
		return lengthRCTT_Slots;
	}
	public void setLengthRCTT_Slots(int lengthRCTT_Slots) {
		this.lengthRCTT_Slots = lengthRCTT_Slots;
	}
	public int getRCTT_ID() {
		return RCTT_ID;
	}
	public void setRCTT_ID(int rCTT_ID) {
		RCTT_ID = rCTT_ID;
	}
	public String getRCTT_RCTTE_Code() {
		return RCTT_RCTTE_Code;
	}
	public void setRCTT_RCTTE_Code(String rCTT_RCTTE_Code) {
		RCTT_RCTTE_Code = rCTT_RCTTE_Code;
	}
	public String getRCTT_Code() {
		return RCTT_Code;
	}
	public void setRCTT_Code(String rCTT_Code) {
		RCTT_Code = rCTT_Code;
	}
	public int getRCTT_Day() {
		return RCTT_Day;
	}
	public void setRCTT_Day(int rCTT_Day) {
		RCTT_Day = rCTT_Day;
	}
	public String getRCTT_Slots() {
		return RCTT_Slots;
	}
	public void setRCTT_Slots(String rCTT_Slots) {
		RCTT_Slots = rCTT_Slots;
	}
	public String getRCTT_Weeks() {
		return RCTT_Weeks;
	}
	public void setRCTT_Weeks(String rCTT_Weeks) {
		RCTT_Weeks = rCTT_Weeks;
	}
	public String getRCTT_Room_Code() {
		return RCTT_Room_Code;
	}
	public void setRCTT_Room_Code(String rCTT_Room_Code) {
		RCTT_Room_Code = rCTT_Room_Code;
	}
	@Override
	public String toString() {
		return "mRegularCourseTimeTable [RCTT_ID=" + RCTT_ID + ", RCTT_RCTTE_Code=" + RCTT_RCTTE_Code + ", RCTT_Code="
				+ RCTT_Code + ", RCTT_Day=" + RCTT_Day + ", RCTT_Slots=" + RCTT_Slots + ", RCTT_Weeks=" + RCTT_Weeks
				+ ", RCTT_Room_Code=" + RCTT_Room_Code + "]";
	}
	

}
