package vn.webapp.modules.timetablemanagement.algorithm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import localsearch.functions.occurrence.Occurrence;
import localsearch.model.ConstraintSystem;
import localsearch.model.IConstraint;
import localsearch.model.IFunction;
import localsearch.model.LocalSearchManager;
import localsearch.model.VarIntLS;
import vn.webapp.modules.timetablemanagement.model.mRoomFree;
import vn.webapp.modules.timetablemanagement.model.mRooms;

public class TimeTable {

	int nCourse;
	int[] courseSlot;
	int[] courseDay;
	int[] courseRoom;
	int[] roomCapacity;
	int[] maxCourseRegister;
	int maxNumRoom;
	
	LocalSearchManager mgr;
	ConstraintSystem S;
	VarIntLS[] x_slot;
	VarIntLS[] x_day;
	VarIntLS[] x_room;
	//VarIntLS[] x_semester;
	List<Set<Integer>> listWeek;
	HashMap<String, Integer> mapBuilding; 
	IFunction nCourseOnSaturday;
	IFunction nCoursePlot;
	FitRoom nFitRoom;
	IConstraint computeRoomConflict;
	int []numSlotsCourse;
	ComputeRooms mCR;
	
	public String name(){
		return "algorithm.TimeTable";
	}
	
	public TimeTable(List<Integer> cSlot,List<Integer> numSlotsCourse, List<Integer> cDay, List<Integer[]> pairCourseFragmented, 
			List<Integer> cRoom, List<Integer> rCapacity, List<Integer> maxRegister,List<Set<Integer>> listWeek,int maxNumRoom){
		nCourse = cSlot.size();
		
		courseSlot = new int[nCourse];
		courseDay = new int[nCourse];
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
			//classCodeOfCourse[i] = cClassCode.get(i);
			//courseSemesterType[i] = cSemesterType.get(i);
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
			x_day[i] = new VarIntLS(mgr, 0,5);
			x_room[i] = new VarIntLS(mgr, 1, maxNumRoom);
			x_room[i].setValue(courseRoom[i]);
			x_day[i].setValue(courseDay[i]);
			x_slot[i].setValue(courseSlot[i]);
		}
		
		nCourseOnSaturday = new Occurrence(x_day, 5);
		
		nFitRoom = new FitRoom(x_room, roomCapacity, maxCourseRegister);
		computeRoomConflict = new ComputeRoomConflict(x_day,x_slot, numSlotsCourse, x_room, listWeek, 0, 20);
		S.post(nFitRoom);
		S.post(computeRoomConflict);
		int day[]= new int[x_day.length];
		int slot[]= new int [x_slot.length];
		int room[]= new int [x_room.length];
		for(int i=0;i<x_day.length;i++ )
			day[i]=x_day[i].getValue();
		for(int i=0;i<x_slot.length;i++ )
			slot[i]=x_slot[i].getValue();
		for(int j=0;j<x_room.length;j++)
			room[j]=x_room[j].getValue();
		mCR= new ComputeRooms(day, slot, numSlotsCourse, room, listWeek, 0, 20, maxNumRoom, x_slot[0].getMaxValue()+1);
		mgr.close();
	}
	
	public int getNumberOfCourseOnSaturday(){
		return nCourseOnSaturday.getValue();
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
		
		System.out.println("init complete");
		return mCR.getAllRoomConflict();
	}
	
	public List<mRoomFree> getListRoomFree(){
		System.out.println(name()+"getListRoomFree");
		return mCR.getListRoomsFree();
		
	}
	
	public List<mRoomFree> sortListRoomsFreebyNumSlotBuilding(List<mRoomFree> list){
		System.out.println(name()+"getListRoomFreeSort");
		return mCR.sortListRoomsFreebyNumSlotBuilding(mapBuilding,list);
		
	}
	
	public int autoDecreaseNCourseOnSaturday(List<mRoomFree> listRF){
		
		int res=0;
		int dLRF[]= new int[listRF.size()];
		for(int i=0;i<x_day.length;i++)
			if(x_day[i].getValue()==5) {
				boolean xd=false;
				for(int j=0;j<listRF.size();j++)
					if (dLRF[j]==0){
						mRoomFree r= listRF.get(j); 
						if((r.getNumSlot()>= numSlotsCourse[i] )&&(((r.getSlotStart()<6 ) && (x_slot[i].getValue()<6))||((r.getSlotStart()>=6 ) && (x_slot[i].getValue()>=6))) ) {
							System.out.println("swap course"+ i  +"to "+r.getDay()+" "+r.getSlotStart()+" "+r.getId());
							dLRF[j]=1;
							x_day[i].setValuePropagate(r.getDay());
							x_slot[i].setValuePropagate(r.getSlotStart());
							x_room[i].setValuePropagate(r.getId());
							xd=true;
							break;
						}
					}
				if(xd==true) res++;
				else System.out.println("This is bug "+ i);
			}
		return res;
	}
	
	
	public List<mRoomFree> addMoreInformationForRooms(List<mRooms> listR,List<mRoomFree> listRF){
		/*
		 * tao hash map building 
		 */
		Set<String> setBuilding= new HashSet<>();
		for(int i=0;i<listR.size();i++){
			setBuilding.add(listR.get(i).getR_Building());
		}
		mapBuilding= new HashMap<>();
		mapBuilding.put("TC", 0);
		mapBuilding.put("D3", 1);
		mapBuilding.put("D5",2);
		mapBuilding.put("D3-5", 3);
		setBuilding.remove("TC");
		setBuilding.remove("D3");
		setBuilding.remove("D5");
		setBuilding.remove("D3-5");
		int ct=4;
		
		for(String s: setBuilding){
			if((s.charAt(0)!='T') || (s.charAt(0)!='D') || (s.length()>=5)) continue;  
			mapBuilding.put(s, ct);
			ct++;
		}
		Iterator<String> it= mapBuilding.keySet().iterator();
		while (it.hasNext()){
			System.out.println(mapBuilding.get(it.next()));
		}
		
		for(int i=0;i<listRF.size();){
			mRoomFree rF= listRF.get(i);
			mRooms r= listR.get(rF.getId());
			if(mapBuilding.get(r.getR_Building())==null){
				listRF.remove(i);
				continue;
			}
			rF.setR_Building(r.getR_Building());
			listRF.set(i, rF);
			i++;
		}
				return listRF;
	}
}
