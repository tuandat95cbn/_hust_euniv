package vn.webapp.modules.timetablemanagement.algorithm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import localsearch.model.AbstractInvariant;
import localsearch.model.ConstraintSystem;
import localsearch.model.IConstraint;
import localsearch.model.LocalSearchManager;
import localsearch.model.VarIntLS;

class Pair{
		public Pair(int x,int y){
			this.x=x;
			this.y=y;
		}
		public int x;
		public int y;
}
public class ComputeRoomConflict extends AbstractInvariant implements IConstraint  {
	private VarIntLS[] xd;
	private VarIntLS[] xs;
	private VarIntLS[] xr;
	private VarIntLS[] _x;
	List<Set<Integer>> w;
	LocalSearchManager ls;
	HashMap<VarIntLS, Integer> map;
	
	int ws;
	int we;
	int violation=0; 
	int []ns;
	int d[][];
	int mark[][][];
	
	public ComputeRoomConflict(VarIntLS[] xd,VarIntLS []xs, int []ns,VarIntLS[] room, List<Set<Integer>> weeks,int ws,int we){
		System.out.println("ComputeRoomConflict start");
		this.xd=xd;
		this.xs=xs;
		this.xr=room;
		this.w=weeks;
		this.ws=ws;
		this.we=we;
		this.ns=ns;
		
		map= new HashMap<>();
		
		for(int i=0;i<xd.length;i++)
			map.put(xd[i], i);
		for(int i=0;i<xs.length;i++)
			map.put(xs[i], i+xd.length);
		for(int i=0;i<xr.length;i++)
			map.put(xr[i], i+xd.length+xs.length);
		mark=new int [we+1][(xd[0].getMaxValue()+1)*(xs[0].getMaxValue()+1)][xr[0].getMaxValue()+1];
		System.out.println("Size of mark"+we+1 +" "+(xd[0].getMaxValue()+1)*(xs[0].getMaxValue()+1)+" "+xr[0].getMaxValue()+1);
		//d= new int[xd.length][xr.length];
		ls=room[0].getLocalSearchManager();
		//ls.post(this);
		post();
		System.out.println("ComputeRoomConflict end");
	}
	
	void post(){
		
		
		_x=new VarIntLS[xd.length+xs.length+xr.length];
		for(int i=0;i<xd.length;i++){
			_x[i]=xd[i];
		}
		for(int i=0;i<xs.length;i++){
			_x[i+xd.length]=xs[i];
		}
		for(int i=0;i<xr.length;i++){
			_x[i+xs.length+xd.length]=xr[i];
		}
		ls.post(this);
	}
	@Override
	
	public LocalSearchManager getLocalSearchManager() {
		// TODO Auto-generated method stub
		return ls;
	}
	@Override
	public VarIntLS[] getVariables() {
		// TODO Auto-generated method stub
		return _x;
	}
	
	public Pair getTwoVarMiddle(int x[]){
		for(int i=0;i<x.length-1;i++)
			for(int j=i+1;j<x.length;j++)
				if(x[i]>x[j]){
					int tmp=x[i];
					x[i]=x[j];
					x[j]=tmp;
				}
		return new Pair(x[1],x[2]);
	}
	@Override
	public void initPropagate() {
		
			System.out.println("ComputeRoomConflict initPropagate start");
			
			for(int j=0;j<xd.length;j++){
				Set<Integer> s= w.get(j);
				for(Integer h: s){
					for(int k=xd[j].getValue()*12+xs[j].getValue();k<xd[j].getValue()*12+xs[j].getValue()+ns[j];k++){
						
						mark[h][k][xr[j].getValue()]+=1;
					}
				}
			}
			
			for(int i=ws;i<we;i++){
				//System.out.println("This is week " +i);
				for(int j=0;j<xd[0].getMaxValue()*12+xs[0].getMaxValue();j++){
					
					for(int k=xr[0].getMinValue();k<xr[0].getMaxValue();k++){
						//System.out.print(mark[i][j][k]+" ");
						if(mark[i][j][k]>1) violation+= mark[i][j][k]-1;
					}
					//System.out.println();
				}
			}
		/*for(int i=ws;i<=we;i++){
			for(int j=0;j<xds.length-1;j++){
				Set sj= w.get(j);
				if (sj.contains(i)==false) continue;
				for(int k=j+1;k<xds.length-1;k++){
					Set sk=w.get(k);
					if(sk.contains(i)==false) continue;
					if(xr[j].getValue()==xr[k].getValue()){
						int s= xds[j].getValue();
						int t= xds[k].getValue();
						int sd=ns[j];
						int td=ns[k];
						if((s+sd<t) && (t+td<s)) ;else {
							int x[]={s,t,s+sd,t+td};
							Pair p= getTwoVarMiddle(x);
							violation+=Math.abs(p.x-p.y);
						}
					}
						
				}
					
					
			}
		}*/
			System.out.println("ComputeRoomConflict initPropagate end");
	}
	@Override
	public void propagateInt(VarIntLS arg0, int arg1) {
		// TODO Auto-generated method stub
		int v0=map.get(arg0);
		if(v0<xd.length){
			int v=v0;
			Set<Integer> s= w.get(v);
			for(Integer h: s){
				for(int k=arg0.getOldValue()*12+xs[v].getValue();k<arg0.getOldValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>1) {
						violation--;
					}
					mark[h][k][xr[v].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg0.getValue()*12+xs[v].getValue();k<arg0.getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>=1) {
						violation++;
					}
					mark[h][k][xr[v].getValue()]++;
				}
			} 
			
		}else if(v0<(xs.length+xd.length)){
			int v=v0-xd.length;
			Set<Integer> s= w.get(v);
			for(Integer h: s){
				for(int k=arg0.getOldValue()+xd[v].getValue()*12;k<arg0.getOldValue()+xd[v].getValue()*12+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>1) {
						violation--;
					}
					mark[h][k][xr[v].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg0.getValue()+xd[v].getValue()*12;k<arg0.getValue()+xd[v].getValue()*12+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>=1) {
						violation++;
					}
					mark[h][k][xr[v].getValue()]++;
				}
			} 
			
		} else {
			int v=v0-xd.length-xs.length;
			Set<Integer> s= w.get(v);
			System.out.println("Propagate room"+v);
			System.out.println(s);
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][arg0.getOldValue()]>1) {
						violation--;
					}
					mark[h][k][arg0.getOldValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][arg0.getValue()]>=1) {
						violation++;
					}
					mark[h][k][arg0.getValue()]++;
				}
			}

			
		}
		print();
		
	}
	
	public void print(){
		System.out.println("ComputeRoomConflict propagateInt*************************");
		for(int i=ws;i<we;i++){
			System.out.println("This is week " +i);
			for(int j=0;j<xd[0].getMaxValue()*12+xs[0].getMaxValue();j++){
				
				for(int k=xr[0].getMinValue();k<xr[0].getMaxValue();k++){
					System.out.print(mark[i][j][k]+" ");
					
				}
				System.out.println();
			}
		}
		System.out.println("*********************************************************");
	}
	@Override
	public boolean verify() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public int getAssignDelta(VarIntLS arg0, int arg1) {
		// TODO Auto-generated method stub
		int v0=map.get(arg0);
		if(v0<xd.length){
			int v=v0-xd.length;
			int del=0;
			Set<Integer> s= w.get(v);
			for(Integer h: s){
				for(int k=arg0.getValue()*12+xs[v].getValue();k<arg0.getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>1) {
						del--;
					}
					mark[h][k][xr[v].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1*12+xs[v].getValue();k<arg1*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>=1) {
						del++;
					}
					mark[h][k][xr[v].getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=arg0.getValue()*12+xs[v].getValue();k<arg0.getValue()*12+xs[v].getValue()+ns[v];k++){
					mark[h][k][xr[v].getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1*12+xs[v].getValue();k<arg1*12+xs[v].getValue()+ns[v];k++){
					mark[h][k][xr[v].getValue()]--;
				}
			}
			print();
			return del;
			
		}else if(v0<(xs.length+xd.length)){
			int v=v0-xd.length;
			int del=0;
			Set<Integer> s= w.get(v);
			for(Integer h: s){
				for(int k=arg0.getValue()+xd[v].getValue()*12;k<arg0.getValue()+xd[v].getValue()*12+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>1) {
						del--;
					}
					mark[h][k][xr[v].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1+xd[v].getValue()*12;k<arg1+xd[v].getValue()*12+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>=1) {
						del++;
					}
					mark[h][k][xr[v].getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=arg0.getValue()+xd[v].getValue()*12;k<arg0.getValue()+xd[v].getValue()*12+ns[v];k++){
					mark[h][k][xr[v].getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1+xd[v].getValue()*12;k<arg1+xd[v].getValue()*12+ns[v];k++){
					mark[h][k][xr[v].getValue()]--;
				}
			}
			print();
			return del;
		
			
		} else {
			int v=v0-xs.length-xd.length;
			Set<Integer> s= w.get(v);
			int del=0;
			System.out.println("Propagate room"+v);
			System.out.println(s);
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][arg0.getValue()]>1) {
						del--;
					}
					mark[h][k][arg0.getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][arg1]>=1) {
						del++;
					}
					mark[h][k][arg1]++;
				}
			}
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					
					mark[h][k][arg0.getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					
					mark[h][k][arg1]--;
				}
			}
			
			return del;
		}
		
		
	}
	@Override
	public int getSwapDelta(VarIntLS arg0, VarIntLS arg1) {
		// TODO Auto-generated method stub
		int v0=map.get(arg0);
		int v1=map.get(arg1);
		if((v0<xd.length) && (v1>=xd.length)) return 0;
		else if((v0<(xd.length+xs.length)) && (v1>=(xd.length+xs.length))) return 0;
		else if((v0>=xd.length) && (v1<xd.length)) return 0;
		else if((v1<(xd.length+xs.length)) && (v0>=(xd.length+xs.length))) return 0;
		if(v0<xd.length){
			int v=v0;
			int vv=v1;
			int del=0;
			Set<Integer> s= w.get(v);
			for(Integer h: s){
				for(int k=arg0.getValue()*12+xs[v].getValue();k<arg0.getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>1) {
						del--;
					}
					mark[h][k][xr[v].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1.getValue()*12+xs[v].getValue();k<arg1.getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>=1) {
						del++;
					}
					mark[h][k][xr[v].getValue()]++;
				}
			}
			Set<Integer> s1= w.get(vv);
			for(Integer h: s1){
				for(int k=arg1.getValue()*12+xs[vv].getValue() ;k<arg1.getValue()*12+xs[vv].getValue()+ns[vv];k++){
					if(mark[h][k][xr[vv].getValue()]>1) {
						del--;
					}
					mark[h][k][xr[vv].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg0.getValue()*12+xs[vv].getValue();k<arg0.getValue()*12+xs[vv].getValue()+ns[vv];k++){
					if(mark[h][k][xr[vv].getValue()]>=1) {
						del++;
					}
					mark[h][k][xr[vv].getValue()]++;
				}
			}
			for(Integer h: s){
				for(int k=arg0.getValue()*12+xs[v].getValue();k<arg0.getValue()*12+xs[v].getValue()+ns[v];k++){
					mark[h][k][xr[v].getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1.getValue()*12+xs[v].getValue();k<arg1.getValue()*12+xs[v].getValue()+ns[v];k++){
					mark[h][k][xr[v].getValue()]--;
				}
			}
			for(Integer h: s1){
				for(int k=arg1.getValue()*12+xs[vv].getValue();k<arg1.getValue()*12+xs[vv].getValue()+ns[vv];k++){
					mark[h][k][xr[vv].getValue()]++;
				}
			}
			
			for(Integer h: s1){
				for(int k=arg0.getValue()*12+xs[vv].getValue();k<arg0.getValue()*12+xs[vv].getValue()+ns[vv];k++){
					mark[h][k][xr[vv].getValue()]--;
				}
			}
			print();
			return del;
			
		}else if(v0<(xd.length+xs.length)){
			int v=v0-xd.length;
			int vv=v1-xd.length;
			int del=0;
			Set<Integer> s= w.get(v);
			for(Integer h: s){
				for(int k=arg0.getValue()+xd[v].getValue()*12;k<arg0.getValue()+xd[v].getValue()*12+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>1) {
						del--;
					}
					mark[h][k][xr[v].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1.getValue()+xd[v].getValue()*12;k<arg1.getValue()+xd[v].getValue()*12+ns[v];k++){
					if(mark[h][k][xr[v].getValue()]>=1) {
						del++;
					}
					mark[h][k][xr[v].getValue()]++;
				}
			}
			Set<Integer> s1= w.get(vv);
			for(Integer h: s1){
				for(int k=arg1.getValue()+xd[vv].getValue()*12;k<arg1.getValue()+xd[vv].getValue()*12+ns[v1];k++){
					if(mark[h][k][xr[v1].getValue()]>1) {
						del--;
					}
					mark[h][k][xr[v1].getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=arg0.getValue()+xd[vv].getValue()*12;k<arg0.getValue()+xd[vv].getValue()*12+ns[v1];k++){
					if(mark[h][k][xr[v1].getValue()]>=1) {
						del++;
					}
					mark[h][k][xr[v1].getValue()]++;
				}
			}
			for(Integer h: s){
				for(int k=arg0.getValue()+xd[v].getValue()*12;k<arg0.getValue()+xd[v].getValue()*12+ns[v];k++){
					mark[h][k][xr[v].getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=arg1.getValue()+xd[v].getValue()*12;k<arg1.getValue()+xd[v].getValue()*12+ns[v];k++){
					mark[h][k][xr[v].getValue()]--;
				}
			}
			for(Integer h: s1){
				for(int k=arg1.getValue()+xd[vv].getValue()*12;k<arg1.getValue()+xd[vv].getValue()*12+ns[vv];k++){
					mark[h][k][xr[vv].getValue()]++;
				}
			}
			
			for(Integer h: s1){
				for(int k=arg0.getValue()+xd[vv].getValue()*12;k<arg0.getValue()+xd[vv].getValue()*12+ns[vv];k++){
					mark[h][k][xr[vv].getValue()]--;
				}
			}
			print();
			return del;
			
		} else {
			int v=v0-xd.length-xs.length;
			int vv=v1-xd.length-xs.length;
			int del=0;
			Set<Integer> s= w.get(v);
			System.out.println("Propagate room"+v);
			System.out.println(s);
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][arg0.getValue()]>1) {
						del--;
					}
					mark[h][k][arg0.getValue()]--;
				}
			}
			
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					if(mark[h][k][arg1.getValue()]>=1) {
						del++;
					}
					mark[h][k][arg1.getValue()]++;
				}
			}
			Set<Integer> s1= w.get(vv);
			System.out.println("Propagate room"+vv);
			System.out.println(s1);
			for(Integer h: s1){
				for(int k=xd[vv].getValue()*12+xs[vv].getValue();k<xd[vv].getValue()*12+xs[vv].getValue()+ns[vv];k++){
					if(mark[h][k][arg1.getValue()]>1) {
						del--;
					}
					mark[h][k][arg1.getValue()]--;
				}
			}
			
			for(Integer h: s1){
				for(int k=xd[vv].getValue()*12+xs[vv].getValue();k<xd[vv].getValue()*12+xs[vv].getValue()+ns[vv];k++){
					if(mark[h][k][arg0.getValue()]>=1) {
						del++;
					}
					mark[h][k][arg0.getValue()]++;
				}
			}
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					
					mark[h][k][arg0.getValue()]++;
				}
			}
			
			for(Integer h: s){
				for(int k=xd[v].getValue()*12+xs[v].getValue();k<xd[v].getValue()*12+xs[v].getValue()+ns[v];k++){
					
					mark[h][k][arg1.getValue()]--;
				}
			}
			
			for(Integer h: s1){
				for(int k=xd[vv].getValue()*12+xs[vv].getValue();k<xd[vv].getValue()*12+xs[vv].getValue()+ns[vv];k++){
					
					mark[h][k][arg1.getValue()]++;
				}
			}
			
			for(Integer h: s1){
				for(int k=xd[vv].getValue()*12+xs[vv].getValue();k<xd[vv].getValue()*12+xs[vv].getValue()+ns[vv];k++){
					
					mark[h][k][arg0.getValue()]--;
				}
			}

			
			return del;
		}
		
	}
	@Override
	public int violations() {
		// TODO Auto-generated method stub
		return violation;
	}
	@Override
	public int violations(VarIntLS arg0) {
		// TODO Auto-generated method stub
		return 0;
	}






}
