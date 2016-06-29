package vn.webapp.modules.timetablemanagement.algorithm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import localsearch.model.AbstractInvariant;
import localsearch.model.IConstraint;
import localsearch.model.LocalSearchManager;
import localsearch.model.VarIntLS;

public class FitRoom extends AbstractInvariant implements IConstraint {

	LocalSearchManager mgr;
	VarIntLS[] x_room;
	int value;
	int[] rCapacity;
	int[] maxRegister;
	int nCourse;
	List<Integer> courseInvalid;
	HashMap<VarIntLS, Integer> map;
	
	public String name(){
		return "algorithm.FitRoom";
	}
	
	public FitRoom(VarIntLS[] x_room, int[] rCapacity, int[] maxRegister){
		this.x_room = x_room;
		this.rCapacity = rCapacity;
		this.maxRegister = maxRegister;
		courseInvalid = new ArrayList<Integer>();
		
		nCourse = x_room.length;
		mgr = x_room[0].getLocalSearchManager();
		
		map = new HashMap<VarIntLS, Integer>();
		for(int i=0; i<nCourse; i++){
			map.put(x_room[i], i);
		}
		
		mgr.post(this);
		
	}
	
	@Override
	public LocalSearchManager getLocalSearchManager() {
		// TODO Auto-generated method stub
		return mgr;
	}

	@Override
	public VarIntLS[] getVariables() {
		// TODO Auto-generated method stub
		return x_room;
	}

	@Override
	public void initPropagate() {
		// TODO Auto-generated method stub
		value=0;
		//System.out.println(name()+"::initPropagate--:");
		for(int i=0; i<nCourse; i++){
//			System.out.print("x_room["+i+"]"+x_room[i].getValue());
//			if(i%99==0){
//				System.out.println();
//			}
			
			int room = x_room[i].getValue();
			
//			System.out.print("maxRegister["+i+"]"+maxRegister[i]);
//			System.out.print("rCapacity["+i+"]"+rCapacity[i]);
			
			if(maxRegister[i]>rCapacity[room-1]){
				value += (maxRegister[i]-rCapacity[room-1]);
				courseInvalid.add(i);
				//System.out.println("course "+i+" vuot qua: "+(maxRegister[i]-rCapacity[room-1]));
			}
		}
	}

	@Override
	public void propagateInt(VarIntLS arg0, int arg1) {
		// TODO Auto-generated method stub
		if(map.get(arg0)!=null){
			int index = map.get(arg0);
			if(maxRegister[index]>rCapacity[arg0.getOldValue()-1]){
				if(maxRegister[index] > rCapacity[arg1-1]){
					value = value - (maxRegister[index]-rCapacity[arg0.getOldValue()-1])
							+ maxRegister[index]-rCapacity[arg1-1];
				}else{
					value = value - (maxRegister[index]-rCapacity[arg0.getOldValue()-1]);
				}
			}else{
				if(maxRegister[index] > rCapacity[arg1-1]){
					value = value + maxRegister[index]-rCapacity[arg1-1];	
				}
			}
		}
	}

	@Override
	public boolean verify() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getAssignDelta(VarIntLS arg0, int arg1) {
		// TODO Auto-generated method stub
		if(map.get(arg0)!=null){
			int index = map.get(arg0);
			if(maxRegister[index]>rCapacity[arg0.getValue()-1]){
				if(maxRegister[index] > rCapacity[arg1-1]){
					return (maxRegister[index]-rCapacity[arg1-1]) 
							- (maxRegister[index]-rCapacity[arg0.getValue()-1]);
							
				}else{
					return (maxRegister[index]-rCapacity[arg0.getValue()-1]);
				}
			}else{
				if(maxRegister[index] > rCapacity[arg1-1]){
					return -(maxRegister[index]-rCapacity[arg1-1]);	
				}else{
					return 0;
				}
			}
		}
		return 0;
	}

	@Override
	public int getSwapDelta(VarIntLS arg0, VarIntLS arg1) {
		// TODO Auto-generated method stub
		return getAssignDelta(arg0, arg1.getValue())+ getAssignDelta(arg1, arg0.getValue());
	}

	@Override
	public int violations() {
		// TODO Auto-generated method stub
		return value;
	}

	@Override
	public int violations(VarIntLS arg0) {
		// TODO Auto-generated method stub
		if(map.get(arg0)!=null){
			int room = arg0.getValue();
			int index = map.get(arg0);
			if(maxRegister[index]>rCapacity[room-1]){
				return maxRegister[index] - rCapacity[room-1];
			}else{
				return 0;
			}
		}
		return 0;
	}
	
	public List<Integer> getCoursesInvalid(){
		return courseInvalid;
	}

}
