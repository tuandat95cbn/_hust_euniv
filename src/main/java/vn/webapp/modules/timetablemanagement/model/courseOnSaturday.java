package vn.webapp.modules.timetablemanagement.model;

import java.util.ArrayList;
import java.util.List;

import vn.webapp.modules.timetablemanagement.model.mRoomFree;

public class courseOnSaturday {
	private int nCredit;
	private int ID;
	private String classCode;
	private String creditDetail;
	
	
	public int getnCredit() {
		return nCredit;
	}

	public void setnCredit(int nCredit) {
		this.nCredit = nCredit;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	public String getCreditDetail() {
		return creditDetail;
	}

	public void setCreditDetail(String creditDetail) {
		this.creditDetail = creditDetail;
	}

//	public courseOnSaturday(String classCode, int nCredit){
//		this.classCode = classCode;
//		this.nCredit = nCredit;
//	}
	
	public List<mRoomFree> findRoom(List<mRoomFree> lst){
		List<mRoomFree> result = new ArrayList<mRoomFree>();
		
		for(int i=0; i<lst.size(); i++){
			mRoomFree tmp = lst.get(i);
			if(tmp.getNumSlot() >=  nCredit){
				result.add(tmp);
			}
		}
		
		return result;
	}
	
}
