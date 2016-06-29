package vn.webapp.modules.timetablemanagement.algorithm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import localsearch.functions.occurrence.Occurrence;
import localsearch.model.ConstraintSystem;
import localsearch.model.IConstraint;
import localsearch.model.IFunction;
import localsearch.model.LocalSearchManager;
import localsearch.model.VarIntLS;

public class TimeTable {

	int nCourse;
	int[] courseSlot;
	int[] courseDay;
	int[] courseRoom;
	int[] roomCapacity;
	int[] maxCourseRegister;
	int maxNumRoom;
	String[] classCodeOfCourse;
	String[] courseSemesterType;
	
	LocalSearchManager mgr;
	ConstraintSystem S;
	VarIntLS[] x_slot;
	VarIntLS[] x_day;
	VarIntLS[] x_room;
	//VarIntLS[] x_semester;
	List<Set<Integer>> listWeek;
	
	IFunction nCourseOnSaturday;
	IFunction nCoursePlot;
	FitRoom nFitRoom;
	IConstraint computeRoomConflict;
	int []numSlotsCourse;
	
	public String name(){
		return "algorithm.TimeTable";
	}
	
	public TimeTable(List<Integer> cSlot,List<Integer> numSlotsCourse, List<Integer> cDay, List<String> cClassCode, List<String> cSemesterType, 
			List<Integer> cRoom, List<Integer> rCapacity, List<Integer> maxRegister,List<Set<Integer>> listWeek,int maxNumRoom){
		nCourse = cSlot.size();
		
		courseSlot = new int[nCourse];
		courseDay = new int[nCourse];
		classCodeOfCourse = new String[nCourse];
		courseSemesterType = new String[nCourse];
		courseRoom = new int[nCourse];
		roomCapacity = new int[rCapacity.size()];
		maxCourseRegister = new int[nCourse];
		this.numSlotsCourse= new int[numSlotsCourse.size()];
		for(int i=0;i<numSlotsCourse.size();i++)
			this.numSlotsCourse[i]=numSlotsCourse.get(i).intValue();
		this.listWeek=listWeek;
		this.maxNumRoom=maxNumRoom;
		for(int i=0; i<nCourse;i++){
			courseSlot[i] = cSlot.get(i);
			courseDay[i] = cDay.get(i);
			classCodeOfCourse[i] = cClassCode.get(i);
			courseSemesterType[i] = cSemesterType.get(i);
			courseRoom[i] = cRoom.get(i);
			maxCourseRegister[i] = maxRegister.get(i);
		}
		
		for(int i=0; i<rCapacity.size(); i++){
			roomCapacity[i] = rCapacity.get(i);
		}
		
	}
	
	public void stateModel(){
		mgr = new LocalSearchManager();
		S = new ConstraintSystem(mgr);
		x_slot = new VarIntLS[nCourse];
		x_day = new VarIntLS[nCourse];
		x_room = new VarIntLS[nCourse];
		
//		System.out.println(name()+"::stateModel--");
		for(int i=0; i<nCourse; i++){
//			System.out.print("roomCapacity["+i+"]"+roomCapacity[i]);
//			System.out.print("maxCourseRegister["+i+"]"+maxCourseRegister[i]);
			
			x_slot[i] = new VarIntLS(mgr, 0,11);
			x_day[i] = new VarIntLS(mgr, 0,6);
			System.out.println("maxNumRoom is"+maxNumRoom);
			x_room[i] = new VarIntLS(mgr, 1, maxNumRoom);
			x_room[i].setValue(courseRoom[i]);
			x_day[i].setValue(courseDay[i]);
			x_slot[i].setValue(courseSlot[i]);
		}
		
		nCourseOnSaturday = new Occurrence(x_day, 7);
		nCoursePlot = new FuncCountPlotOfCourses(classCodeOfCourse, courseSemesterType, x_day);
		
		nFitRoom = new FitRoom(x_room, roomCapacity, maxCourseRegister);
		computeRoomConflict = new ComputeRoomConflict(x_day,x_slot, numSlotsCourse, x_room, listWeek, 0, 20);
		S.post(nFitRoom);
		S.post(computeRoomConflict);
		mgr.close();
	}
	
	public int getNumberOfCourseOnSaturday(){
		return nCourseOnSaturday.getValue();
	}
	
	public int getPlotOfCourse(){
		return nCoursePlot.getValue();
	}
	
	public int getFitRoom(){
		int result = nFitRoom.getCoursesInvalid().size();
		return result;
	}
	
	public int getComputeRoomsConflict(){
		int res=computeRoomConflict.violations();
		return res;
	}
	
	public HashMap<Integer , List<Set<Integer> > > getListRoomConflict(){
		int day[]= new int[x_day.length];
		int slot[]= new int [x_slot.length];
		int room[]= new int [x_room.length];
		for(int i=0;i<x_day.length;i++ )
			day[i]=x_day[i].getValue();
		for(int i=0;i<x_slot.length;i++ )
			slot[i]=x_slot[i].getValue();
		for(int j=0;j<x_room.length;j++)
			room[j]=x_room[j].getValue();
		ComputeRooms mCR= new ComputeRooms(day, slot, numSlotsCourse, room, listWeek, 0, 20, maxNumRoom, x_slot[0].getMaxValue()+1);
		System.out.println("init complete");
		return mCR.getAllRoomConflict();
	}
}
