package vn.webapp.modules.timetablemanagement.algorithm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import localsearch.model.LocalSearchManager;
import localsearch.model.VarIntLS;
import localsearch.selectors.MaxSelector;

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
			for(int j=0;j<maxSlot_day;j++)
				for(int k=0;k<maxNumRoom;k++)
					d[i][j][k]=-1;
		for(int j=0;j<xd.length;j++){
			Set<Integer> s= w.get(j);
			for(Integer h: s){
				for(int k=xd[j]*maxSlot_day+xs[j];k<xd[j]*maxSlot_day+xs[j]+ns[j];k++){
					System.out.println("This is  h k j xr[j]"+h+" "+k+" "+j+" "+xr[j]);
					if(mark[h][k][xr[j]]==0){
						Set set = new HashSet<>();
						set.add(j);
						list_set.add(set);
						d[h][k][xr[j]]=list_set.indexOf(set);
						mark[h][k][xr[j]]=1;
					}else{
						mark[h][k][xr[j]]+=1;
						Set set= list_set.get(d[h][k][xr[j]]);
						set.add(j);
						list_set.set(d[h][k][xr[j]], set);
					}
				}
			}
		}
		
		//printD();
		//System.out.println("This is list_set");
		//for(int i=0;i<list_set.size();i++)
			//System.out.println(list_set.get(i));
		
		//print();
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
			for(int j=0;j<maxSlot_day;j++){
				
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
		for(int i =0;i<ns.length;i++){
			System.out.println(i+" "+ns[i]);
		}
		HashMap<Integer , List<Set<Integer> > > hash= new HashMap<>();
		for(int i=ws;i<we;i++){
			List<Set<Integer>> l= new ArrayList<>();
			for(int j=0;j<maxSlot_day;j++){
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
	
	

}
