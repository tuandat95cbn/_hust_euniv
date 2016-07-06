package vn.webapp.modules.timetablemanagement.model;

import java.util.Set;

public class mRoomFree {
	private int id;
	private Set<Integer> setWeeksFree;
	private boolean freeFullPeroids;
	private int slotStart;
	private int slotEnd;
	private int day;
	private String R_Building;
	public String getR_Building() {
		return R_Building;
	}
	public void setR_Building(String r_Building) {
		R_Building = r_Building;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Set<Integer> getSetWeeksFree() {
		return setWeeksFree;
	}
	public void setSetWeeksFree(Set<Integer> setWeeksFree) {
		this.setWeeksFree = setWeeksFree;
	}
	public boolean isFreeFullPeroids() {
		return freeFullPeroids;
	}
	public void setFreeFullPeroids(boolean freeFullPeroids) {
		this.freeFullPeroids = freeFullPeroids;
	}
	public int getSlotStart() {
		return slotStart;
	}
	public void setSlotStart(int slotStart) {
		this.slotStart = slotStart;
	}
	public int getSlotEnd() {
		return slotEnd;
	}
	public void setSlotEnd(int slotEnd) {
		this.slotEnd = slotEnd;
	}
	@Override
	public String toString() {
		return "mRoomFree [id=" + id + ", freeFullPeroids=" + freeFullPeroids
				+ ", slotStart=" + slotStart + ", slotEnd=" + slotEnd + ", day=" + day + "]";
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	
	public int getNumSlot(){
		return slotEnd-slotStart+1;
	}

}
