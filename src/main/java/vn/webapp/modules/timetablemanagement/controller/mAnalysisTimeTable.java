package vn.webapp.modules.timetablemanagement.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
import vn.webapp.modules.timetablemanagement.model.mRooms;
import vn.webapp.modules.timetablemanagement.service.mRegularCourseTimeTableService;
import vn.webapp.modules.timetablemanagement.service.mRoomsService;

//@Controller("cpmAnalysisTimeTable")
//@RequestMapping(value={"/cp"})
public class mAnalysisTimeTable {
	ArrayList<String> listRoom= new ArrayList<>();
	int [][][] d;
	String lv[][][];
	@Autowired
	mRegularCourseTimeTableService regularCourseTimeTableService;
	@Autowired
	mRoomsService RS;
	public void initComputeRoomConflict(List<mRooms> lR,mRoomsService RS){
		lR= RS.getAllRoom();
		for(int i=0;i<lR.size();i++)
			listRoom.add(lR.get(i).getR_Code());
		System.out.println("This is lR:"+lR);
		d= new int[7][lR.size()][12];
		lv= new String[7][lR.size()][12];
	}
	
	public int computeRoomConflict(mRegularCourseTimeTableService regularCourseTimeTableService,mRoomsService RS){
		System.out.println("This is regularCourseTimeTableService :"+regularCourseTimeTableService);
		System.out.println("This is RS :"+RS);
		ArrayList<Set<String>> listSetResult= new ArrayList<>(); //***********************
		List<mRooms> lR = null;
		initComputeRoomConflict(lR,RS);
		List<mRegularCourseTimeTable> listRCTT= regularCourseTimeTableService.getAllCourseTimeTable();
		for(int i=0;i<listRCTT.size();i++){
			System.out.println("This is :"+i+" step ");
			mRegularCourseTimeTable r= listRCTT.get(i);
			System.out.println("r is :"+r);
			if(r.getRCTT_Day()==0 || r.getRCTT_Slots()==null || r.getRCTT_Room_Code()==null || r.getRCTT_Slots().length()>5 ) continue; 
			int tmp=listRoom.indexOf(r.getRCTT_Room_Code());
			String slot= r.getRCTT_Slots();
			int pos = slot.indexOf("-");
			int startSlot= Integer.parseInt(slot.substring(0, pos));
			int endSlot=Integer.parseInt(slot.substring(pos+1, slot.length()));
			int day= r.getRCTT_Day()-2;
			System.out.println("is: startSlot"+startSlot+"endSlot :"+ endSlot +"day :"+day+"tmp :"+tmp);
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
		print(listSetResult);
		print(d);
		print(lv);
		return 0;
	}
	
	public void print(ArrayList<Set<String>> l){
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
}
