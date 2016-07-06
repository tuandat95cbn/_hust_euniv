package vn.webapp.modules.timetablemanagement.algorithm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import localsearch.model.LocalSearchManager;
import localsearch.model.VarIntLS;
import localsearch.selectors.MaxSelector;
import vn.webapp.modules.timetablemanagement.model.mRoomFree;



public class ComputeRooms {
	private int[] xd;
	private int[] xs;
	private int[] xr;
	List<Set<Integer>> w;
	int ws;
	int we;
	int violation=0; 
	int []ns;
	int mark[][][];
	int d[][][];
	List<Set<Integer>> list_set= new ArrayList<>();
	int maxNumRoom=0;
	int maxSlot_day=0;
	
	
	public ComputeRooms(int []day,int []slots,int []ns,int []room, List<Set<Integer>> weeks,int ws,int we,int maxNumRoom,int maxSlot_day){
		this.xd=day;
		this.xs=slots;
		this.xr=room;
		this.w=weeks;
		this.ws=ws;
		this.we=we;
		this.ns=ns;
		this.maxSlot_day=maxSlot_day;
		this.maxNumRoom=maxNumRoom;
		mark=new int [we+1][7*maxSlot_day][maxNumRoom+1];
		d=new int [we+1][7*maxSlot_day][maxNumRoom+1];
		for(int i=0;i<we+1;i++)
			for(int j=0;j<maxSlot_day*7;j++)
				for(int k=0;k<maxNumRoom;k++)
					d[i][j][k]=-1;
		for(int j=0;j<xd.length;j++){
			if(j==1424)
			System.out.println(xd[j]+" "+xs[j]+" "+xr[j]+" "+w.get(j)+" "+ns[j]);
			Set<Integer> s= w.get(j);
			for(Integer h: s){
				for(int k=xd[j]*maxSlot_day+xs[j];k<xd[j]*maxSlot_day+xs[j]+ns[j];k++){
					//System.out.println("This is  h k j xr[j]"+h+" "+k+" "+j+" "+xr[j]);
					System.out.println("ComputeRooms "+h+" "+k+" "+j+" "+xr[j] );
					if(mark[h][k][xr[j]]==0){
//						Set set = new HashSet<>();
//						set.add(j);
//						list_set.add(set);
//						d[h][k][xr[j]]=list_set.indexOf(set);
						mark[h][k][xr[j]]=1;
					}else{
						mark[h][k][xr[j]]+=1;
//						Set set= list_set.get(d[h][k][xr[j]]);
//						set.add(j);
//						list_set.set(d[h][k][xr[j]], set);
					}
				}
			}
		}
		
		//printD();
		//System.out.println("This is list_set");
		//for(int i=0;i<list_set.size();i++)
			//System.out.println(list_set.get(i));
		
		//print();
		System.out.println("This is mark"+0*maxSlot_day+9+" "+ mark[18][0*maxSlot_day+9][1]);
		System.out.println("This is mark"+0*maxSlot_day+10+" "+ mark[18][0*maxSlot_day+10][1]);
		
	}
	public void print(){
		System.out.println("ComputeRoomConflict *************************");
		for(int i=ws;i<we;i++){
			System.out.println("This is week " +i+" maxSlot_day:"+maxSlot_day+" maxNumRoom :"+maxNumRoom);
			for(int j=0;j<maxSlot_day;j++){
				
				for(int k=0;k<maxNumRoom;k++){
					System.out.print(mark[i][j][k]+" ");
					
				}
				System.out.println();
			}
		}
		System.out.println("*********************************************************");
	}
	
	public void printD(){
		System.out.println("ComputeRoomConflict d*************************");
		for(int i=ws;i<we;i++){
			System.out.println("This is week " +i+" maxSlot_day:"+maxSlot_day+" maxNumRoom :"+maxNumRoom);
			for(int j=0;j<maxSlot_day*7;j++){
				
				for(int k=0;k<maxNumRoom;k++){
					System.out.print(d[i][j][k]+" ");
					
				}
				System.out.println();
			}
		}
		System.out.println("*********************************************************");
	}
	public HashMap<Integer , List<Set<Integer> > > getAllRoomConflict(){
		System.out.println("This is numSlots");
		HashMap<Integer , List<Set<Integer> > > hash= new HashMap<>();
		for(int i=ws;i<we+1;i++){
			List<Set<Integer>> l= new ArrayList<>();
			for(int j=0;j<maxSlot_day*7;j++){
				for(int k=0;k<maxNumRoom;k++){
					if(mark[i][j][k]>1){
						Set set= list_set.get(d[i][j][k]);
						l.add(set);
					}
				}
			}
			hash.put(i, l);
		}
		return hash;
	}
	public String name(){
		return "ComputeRooms";
	}
	public List<mRoomFree> getListRoomsFree(){
		List<mRoomFree> l= new ArrayList<>();
		System.out.println(name()+"getListRoomsFree");
		for(int i=1;i<maxNumRoom;i++){
			for(int j=0;j<5;j++){
				int slotStart=-1;
				for(int k=0;k<maxSlot_day/2;k++){
					boolean xd=true;
					for(int h=ws;h<we+1;h++)
						if(mark[h][j*maxSlot_day+ k][i]!=0) xd=false;
					
					
					
					if(xd==true){
						if(slotStart==-1) slotStart=k;
					}
					if(xd==false){
						if(slotStart!=-1) {
							if((k-slotStart)>=2) {
								mRoomFree r= new mRoomFree();
								r.setId(i);
								r.setDay(j);
								r.setFreeFullPeroids(true);
								r.setSlotEnd(k-1);
								r.setSlotStart(slotStart);
								Set s= new HashSet<>();
								
								for(int ii=ws;ii<we+1;ii++){
									s.add(ii);
								}
								r.setSetWeeksFree(s);
								l.add(r);
							}
							slotStart=-1;
						}
					}
				}
				if(slotStart!=-1)
				if((maxSlot_day/2-slotStart)>=2) {
					mRoomFree r= new mRoomFree();
					r.setId(i);
					r.setDay(j);
					r.setFreeFullPeroids(true);
					r.setSlotEnd(maxSlot_day/2-1);
					r.setSlotStart(slotStart);
					Set s= new HashSet<>();
					
					for(int ii=ws;ii<we+1;ii++){
						s.add(ii);
					}
					r.setSetWeeksFree(s);
					l.add(r);
					slotStart=-1;
				}
				
				slotStart=-1;
				for(int k=maxSlot_day/2;k<maxSlot_day;k++){
					boolean xd=true;
					for(int h=ws;h<we+1;h++)
						if(mark[h][j*maxSlot_day+ k][i]!=0) xd=false;
					
					if(xd==true){
						if(slotStart==-1) slotStart=k;
					}
					if(xd==false){
						if(slotStart!=-1) {
							if((k-slotStart)>=2) {
								mRoomFree r= new mRoomFree();
								r.setId(i);
								r.setDay(j);
								r.setFreeFullPeroids(true);
								r.setSlotEnd(k-1);
								r.setSlotStart(slotStart);
								Set s= new HashSet<>();
								
								for(int ii=ws;ii<we+1;ii++){
									s.add(ii);
								}
								r.setSetWeeksFree(s);
								l.add(r);
							}
							slotStart=-1;
						}
					}
				}
				if(slotStart!=-1)
				if((maxSlot_day-slotStart)>=2) {
					mRoomFree r= new mRoomFree();
					r.setId(i);
					r.setDay(j);
					r.setFreeFullPeroids(true);
					r.setSlotEnd(maxSlot_day-1);
					r.setSlotStart(slotStart);
					Set s= new HashSet<>();
					
					for(int ii=ws;ii<we+1;ii++){
						s.add(ii);
					}
					r.setSetWeeksFree(s);
					l.add(r);
					slotStart=-1;
				}
				
			}
		}
		return l;
	}
	static HashMap<String , Integer> mapBuilding;
	public List<mRoomFree> sortListRoomsFreebyNumSlotBuilding(HashMap<String, Integer> map,List<mRoomFree> list){
		mapBuilding=map;
		System.out.println(name()+"getListRoomsFreeSort");
		
		//Comparator<mRoomFree> c = new RoomFreeComparator();
	
		Collections.sort(list, new Comparator<mRoomFree>() {

			@Override
			public int compare(mRoomFree r1, mRoomFree r2) {
				// TODO Auto-generated method stub
				if  (r1.getNumSlot()>r2.getNumSlot()) return 1;
				else if(r1.getNumSlot()==r2.getNumSlot()){
					if(mapBuilding.get(r1.getR_Building())> mapBuilding.get(r2.getR_Building())) return 1;
					else if(mapBuilding.get(r1.getR_Building())== mapBuilding.get(r2.getR_Building())) return 0;
					else return -1;
				}
				return -1;
			}
		});
		
		
		
		return list;
	}

}
