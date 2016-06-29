package vn.webapp.modules.timetablemanagement.algorithm;

import java.util.HashMap;

import localsearch.model.AbstractInvariant;
import localsearch.model.IFunction;
import localsearch.model.LocalSearchManager;
import localsearch.model.VarIntLS;

public class FuncCountPlotOfCourses extends AbstractInvariant implements IFunction {

	private LocalSearchManager mgr;
	private int value;
	private int nCourse;
	HashMap<VarIntLS, Integer> map;
	private String[] classCodeOfCourse;
	private String[] courseSemesterType;
	
	
	VarIntLS[] x_day;
	
	
	public FuncCountPlotOfCourses(String[] classCodeOfCourse, String[] courseSemesterType, VarIntLS[] x_day){
		this.x_day = x_day;
		this.mgr = x_day[0].getLocalSearchManager();

		this.classCodeOfCourse = classCodeOfCourse;
		this.courseSemesterType = courseSemesterType;
		nCourse = x_day.length;
		
		map = new HashMap<VarIntLS, Integer>();
		for(int i=0; i<x_day.length; i++){
			map.put(x_day[i], i);
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
		return x_day;
	}

	@Override
	public void initPropagate() {
		// TODO Auto-generated method stub
		value=0;
		for(int i=1; i<nCourse; i++){
			if(classCodeOfCourse[i].equals(classCodeOfCourse[i-1])){
				if(courseSemesterType[i].equals("AB")){
					value++;
				}
			}
		}
	}

	@Override
	public void propagateInt(VarIntLS arg0, int arg1) {
		// TODO Auto-generated method stub
		if(map.get(arg0) != null){
			int index = map.get(arg0);
			
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
		return 0;
	}

	@Override
	public int getMaxValue() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getMinValue() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getSwapDelta(VarIntLS arg0, VarIntLS arg1) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getValue() {
		// TODO Auto-generated method stub
		return value;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
