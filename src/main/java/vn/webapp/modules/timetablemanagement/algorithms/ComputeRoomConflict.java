package vn.webapp.modules.timetablemanagement.algorithms;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
import vn.webapp.modules.timetablemanagement.model.mRooms;
import vn.webapp.modules.timetablemanagement.service.mRegularCourseTimeTableService;
import vn.webapp.modules.timetablemanagement.service.mRoomsService;

public class ComputeRoomConflict {
	ArrayList<String> listRoom= new ArrayList<>();
	int [][][] d;
	String lv[][][];
	@Autowired
	mRegularCourseTimeTableService regularCourseTimeTableService;
	@Autowired
	mRoomsService RS;
	public void initComputeRoomConflict(List<mRooms> lR){
		lR= RS.getAllRoom();
		d= new int[7][lR.size()][12];
		lv= new String[7][lR.size()][12];
	}
	
	public int computeRoomConflict(){
		ArrayList<Set<String>> listSetResult= new ArrayList<>(); //***********************
		List<mRooms> lR = null;
		initComputeRoomConflict(lR);
		List<mRegularCourseTimeTable> listRCTT= regularCourseTimeTableService.getAllCourseTimeTable();
		for(int i=0;i<listRCTT.size();i++){
			mRegularCourseTimeTable r= listRCTT.get(i);
			int tmp=lR.indexOf(r.getRCTT_Room_Code());
			String slot= r.getRCTT_Slots();
			int startSlot= Integer.parseInt(slot.substring(0, 1));
			int endSlot=Integer.parseInt(slot.substring(2, 3));
			int day= r.getRCTT_Day()-2;
			for(int j=startSlot;j<=endSlot;j++){
				if(d[day][tmp][j]==0){
					lv[day][tmp][j]=r.getRCTT_RCTTE_Code();
					d[day][tmp][j]++;
				} else {
					if(d[day][tmp][j]==1){
						HashSet<String> s= new HashSet<>();
						s.add(lv[day][tmp][j]);
						listSetResult.add(s);
						lv[day][tmp][j]= "@"+Integer.toString(listSetResult.indexOf(s));
					} else {
						Set s= listSetResult.get(Integer.parseInt(lv[day][tmp][j].substring(1, lv[day][tmp][j].length())));
						s.add(r.getRCTT_RCTTE_Code());
					}
					d[day][tmp][j]++;
				}
			}
			
		}
		return 0;
	}
	
	public void print(ArrayList<Object> l){
		for(int i=0;i<l.size();i++){
			System.out.println(l.get(i));
		}
	}
	
	public void print(int [][][] a){
		for(int i=0;i<7;i++){
			System.out.println("This is day :"+ i );
			for(int j=0;j<20;j++){
				for(int k=0;k<12;k++)
					System.out.print(a[i][j][k]+" ");
				System.out.println();
			}
		}
	}
	
	public void print(String [][][] a){
		for(int i=0;i<7;i++){
			System.out.println("This is day :"+ i );
			for(int j=0;j<20;j++){
				for(int k=0;k<12;k++)
					System.out.print(a[i][j][k]+" ");
				System.out.println();
			}
		}
	}

	public static void main(String[] args) {
		ComputeRoomConflict c= new ComputeRoomConflict();
		c.computeRoomConflict();

	}

}
