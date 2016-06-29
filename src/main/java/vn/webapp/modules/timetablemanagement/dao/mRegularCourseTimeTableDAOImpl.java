package vn.webapp.modules.timetablemanagement.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder.In;

import org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.dao.BaseDao;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class mRegularCourseTimeTableDAOImpl extends BaseDao implements mRegularCourseTimeTableDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	@Override
	public List<mRegularCourseTimeTable> getAllCourseTimeTable() {
		// TODO Auto-generated method stub
		try{
		begin();
		Criteria criteria= getSession().createCriteria(mRegularCourseTimeTable.class);
		//criteria.setMaxResults(300);
		criteria.add(Restrictions.and(Restrictions.and(Restrictions.ne("RCTT_Day", 0),
				Restrictions.isNotNull("RCTT_Slots")), Restrictions.and(
				Restrictions.isNotNull("RCTT_Room_Code"),
				Restrictions.lt("lengthRCTT_Slots", 6))));

		List <mRegularCourseTimeTable> listRegularCourseTimeTable = criteria.list();
		System.out.println("size of listRegularCourseTimeTable is:"+listRegularCourseTimeTable.size());
		commit();
		return listRegularCourseTimeTable;
		} catch (HibernateException e){
			e.printStackTrace();
			rollback();
			close();
			return null;
		} finally {
			flush();
			close();
		}
	}
	@Override
	public int saveARegularCourseTimeTable(mRegularCourseTimeTable rctt) {
		// TODO Auto-generated method stub
		System.out.println("This is "+name());
		System.out.println("rctt is: "+rctt.toString());
		try {
            begin();
            //System.out.println("This is 2"+name());
            int id = 0; 
            getSession().save(rctt);
            //System.out.println("This is 3"+name());
            commit();
            //System.out.println("This is 4"+name());
            return id;           
         } catch (HibernateException e) {
             e.printStackTrace();
             rollback();
             close();
             return 0;
         } finally {
             flush();
             close();
         }
	}
	
	public String name(){
		return "mRegularCourseTimeTableDAOImpl";
	}

	@Override
	
	public int removeRegularCourseTimeTable_ColumnName_Equal(String columnName, String value) {
		// TODO Auto-generated method stub
		//System.out.println(name()+"removeRegularCourseTimeTable_ColumnName_Equal");
		try {
            begin();
            Query query = getSession().createQuery("DELETE FROM mRegularCourseTimeTable where "+ columnName +" = :value");
            //System.out.println(name()+"removeRegularCourseTimeTable_ColumnName_Equal "+"DELETE FROM mRegularCourseTimeTable where "+ columnName +" = :value");
            query.setParameter("value", value);
            int result = query.executeUpdate();
            //System.out.println("This is 3"+name());
            commit();
            //System.out.println("This is 4"+name());
            return 1;           
         } catch (HibernateException e) {
             e.printStackTrace();
             rollback();
             close();
             return 0;
         } finally {
             flush();
             close();
         }
	
	}
	@Override
	public List<Integer> getAllDayValid() {
		// TODO Auto-generated method stub
		try{
			begin();
			Criteria criteria= getSession().createCriteria(mRegularCourseTimeTable.class).setProjection(Projections.property("RCTT_Day"));
			//criteria.setMaxResults(300);
			criteria.add(Restrictions.and(Restrictions.and(Restrictions.ne("RCTT_Day", 0),
			Restrictions.isNotNull("RCTT_Slots")), Restrictions.and(
			Restrictions.isNotNull("RCTT_Room_Code"),
			Restrictions.lt("lengthRCTT_Slots", 6))));
			
			List<Integer>  l = criteria.list();
			//System.out.println("This is l:"+l);
			//for(int i=0;i<l.size();i++)
			//	System.out.println(l.get(i));
			for(int i=0;i<l.size();i++){
				Integer s= l.get(i);
				l.set(i,s-2);
			}
			commit();
			return l;
			} catch (HibernateException e){
				e.printStackTrace();
				rollback();
				close();
				return null;
			} finally {
				flush();
				close();
			}
	}
	@Override
	public List<Integer> getAllSlotsStart() {
		// TODO Auto-generated method stub
		try{
			begin();
			Criteria criteria= getSession().createCriteria(mRegularCourseTimeTable.class).setProjection(Projections.property("RCTT_Slots"));
			//criteria.setMaxResults(300);
			criteria.add(Restrictions.and(Restrictions.and(Restrictions.ne("RCTT_Day", 0),
			Restrictions.isNotNull("RCTT_Slots")), Restrictions.and(
			Restrictions.isNotNull("RCTT_Room_Code"),
			Restrictions.lt("lengthRCTT_Slots", 6))));
			
			List<String>  l = criteria.list();
			List<Integer> listInt= new ArrayList<>();
			for(int i=0;i<l.size();i++){
				String s= l.get(i);
				listInt.add(Integer.parseInt(s.substring(0, s.indexOf("-")))-1);
			}
			commit();
			return listInt;
			} catch (HibernateException e){
				e.printStackTrace();
				rollback();
				close();
				return null;
			} finally {
				flush();
				close();
			}

	}
	@Override
	public List<Integer> getAllNumberSlot() {
		// TODO Auto-generated method stub
		try{
			begin();
			Criteria criteria= getSession().createCriteria(mRegularCourseTimeTable.class).setProjection(Projections.property("RCTT_Slots"));
			//criteria.setMaxResults(300);
			criteria.add(Restrictions.and(Restrictions.and(Restrictions.ne("RCTT_Day", 0),
			Restrictions.isNotNull("RCTT_Slots")), Restrictions.and(
			Restrictions.isNotNull("RCTT_Room_Code"),
			Restrictions.lt("lengthRCTT_Slots", 6))));
			
			List<String>  l = criteria.list();
			List<Integer> listInt= new ArrayList<>();
			for(int i=0;i<l.size();i++){
				String s= l.get(i);
				listInt.add(Integer.parseInt(s.substring(s.indexOf("-")+1,s.length())) -Integer.parseInt(s.substring(0, s.indexOf("-"))));
			}
			commit();
			return listInt;
			} catch (HibernateException e){
				e.printStackTrace();
				rollback();
				close();
				return null;
			} finally {
				flush();
				close();
			}
	}
	@Override
	public int countCourseOnSaturday() {
		// TODO Auto-generated method stub
		try{
			begin();
			System.out.println(name()+"::countCourseOnSaturday--Start");
			//Criteria criteria = getSession().createCriteria(mRegularCourseTimeTable.class);
			String hql = "SELECT count(RCTT_Code) FROM mRegularCourseTimeTable WHERE RCTT_Day = '7'";
			int result = ((Long)getSession().createQuery(hql).uniqueResult()).intValue();
			//List result = query.list();
			System.out.println(name()+"::countCourseOnSaturday--returnResult: "+ result);
			//int t=((Object) result.get(0)).intValue();
			commit();
			//System.out.println(name()+"::countCourseOnSaturday--returnResult"+result.get(0));
			return result;
		}catch(HibernateException e){
			e.printStackTrace();
			rollback();
			close();
			return 0;
		}finally{
			flush();
			close();
		}
	}

	@Override
	public int countCourseOnSaturdayInTCandD9() {
		// TODO Auto-generated method stub
		try{
			begin();
			int result;
			String hql = "SELECT count(RCTT_Code) FROM mRegularCourseTimeTable WHERE RCTT_Day='7' and (RCTT_Room_Code like 'TC*' or RCTT_Room_Code like 'D9*')";
			result = ((Long)getSession().createQuery(hql).uniqueResult()).intValue();
			System.out.println(name()+"::countCourseOnSaturdayInTCandD9--returnResult: "+ result);
			commit();
			return result;
			
		}catch(HibernateException e){
			e.printStackTrace();
			rollback();
			close();
			return 0;
		}finally{
			flush();
			close();
		}
	}

	@Override
	public List<Integer> getCourseRoom() {
		// TODO Auto-generated method stub
		try{
			begin();
			String hql = "SELECT r.R_ID FROM mRooms r, mRegularCourseTimeTable m WHERE m.RCTT_Room_Code = r.R_Code";
			Query query = getSession().createQuery(hql);
			List<Integer> result = query.list();
			System.out.println(name()+"::getCourseRoom--result size"+result.size());
			commit();
			return result;
		}catch(HibernateException e){
			e.printStackTrace();
			rollback();
			close();
			return null;
		}finally{
			flush();
			close();
		}
	}
	@Override
	public List<Set<Integer>> getListSetWeek() {
		// TODO Auto-generated method stub
		int min=getMinWeeks();
		try{
			begin();
			Criteria criteria= getSession().createCriteria(mRegularCourseTimeTable.class).setProjection(Projections.property("RCTT_Weeks"));
			//criteria.setMaxResults(300);
			criteria.add(Restrictions.and(Restrictions.and(Restrictions.ne("RCTT_Day", 0),
			Restrictions.isNotNull("RCTT_Slots")), Restrictions.and(
			Restrictions.isNotNull("RCTT_Room_Code"),
			Restrictions.lt("lengthRCTT_Slots", 6))));
			
			List<String>  l = criteria.list();
			List<Set<Integer>> list= new ArrayList<>();
			
			
			
			for(int i=0;i<l.size();i++){
				String s= l.get(i);
				s=s+",";
				Set set= new HashSet<>();
				while(s.indexOf(",")!=-1){
					//System.out.println(s);
					
					if((s.indexOf("-") !=-1)&& (s.indexOf(",")>s.indexOf("-"))){
						int start= Integer.parseInt(s.substring(0, s.indexOf("-")));
						int end = Integer.parseInt(s.substring(s.indexOf("-")+1,s.indexOf(",")));
						for(int j=start;j<=end;j++){
							set.add(j-min);
							//if(j>max) max=j;
							//if(j<min) min=j;
						}
					} else {
						int z= Integer.parseInt(s.substring(0, s.indexOf(",")));
						set.add(z-min);
					}
					
					s=s.substring(s.indexOf(",")+1);
				}
				//System.out.println(name()+"getListSetWeek resuft set is :" +set);
				list.add(set);
			}
			
			commit();
			return list;
			} catch (HibernateException e){
				e.printStackTrace();
				rollback();
				close();
				return null;
			} finally {
				flush();
				close();
			}
	}
	@Override
	public int getMaxWeeks() {
		// TODO Auto-generated method stub
		
		return 0;
	}
	@Override
	public int getMinWeeks() {
		// TODO Auto-generated method stub
		try{
			begin();
			Criteria criteria = getSession()
				    .createCriteria(mRegularCourseTimeTable.class)
				    .setProjection(Projections.min("RCTT_Weeks"));
			String min = (String) criteria.uniqueResult();
			int res;
			
			if(min.indexOf(",")>min.indexOf("-")){
				res= Integer.parseInt(min.substring(0, min.indexOf("-")));
			} else {
				res= Integer.parseInt(min.substring(0, min.indexOf(",")));
			}
			System.out.println("This is getMinWeeks"+res);
			commit();
			return res;
			} catch (HibernateException e){
				e.printStackTrace();
				rollback();
				close();
				return 0;
			} finally {
				flush();
				close();
			}
		
		
	}
	@Override
	public List<String> getCourseSemesterType() {
		// TODO Auto-generated method stub
		try{
			begin();
			String hql = "SELECT rctte.RCTTE_Semester_Type FROM mRegularCourseTimeTable rctt, mRegularCourseTimeTableEntry rctte"
					+ " WHERE rctt.RCTT_RCTTE_Code = rctte.RCTTE_Code";
			Query query = getSession().createQuery(hql);
			
			//System.out.println(name()+"::getSemesterType()--result: ");
			commit();
			return query.list();
			
		}catch(HibernateException e){
			e.printStackTrace();
			rollback();
			close();
			return null;
		}finally{
			flush();
			close();
		}
		
	}

	@Override
	public List<String> getClassCodeOfCourse() {
		// TODO Auto-generated method stub
		try{
			
			begin();
			String hql =  "SELECT rctte.RCTTE_Class_Code FROM mRegularCourseTimeTable rctt, mRegularCourseTimeTableEntry rctte"
					+ " WHERE rctt.RCTT_RCTTE_Code = rctte.RCTTE_Code";
			Query query = getSession().createQuery(hql);
			commit();
			
			//System.out.println(name()+"::getClassCodeOfCourse--result"+query.list());
			return query.list();
			
		}catch(HibernateException e){
			e.printStackTrace();
			rollback();
			close();
			return null;
		}finally{
			flush();
			close();
		}
		
	}

	@Override
	public List<Integer> getMaxCoursesRegister() {
		// TODO Auto-generated method stub
		try{
			
			begin();
			String hql =  "SELECT rctte.RCTTE_Course_MaxRegister FROM mRegularCourseTimeTable rctt, mRegularCourseTimeTableEntry rctte"
					+ " WHERE rctt.RCTT_RCTTE_Code = rctte.RCTTE_Code";
			Query query = getSession().createQuery(hql);
			commit();
			
			//System.out.println(name()+"::getClassCodeOfCourse--result"+query.list());
			return query.list();
			
		}catch(HibernateException e){
			e.printStackTrace();
			rollback();
			close();
			return null;
		}finally{
			flush();
			close();
		}
	}
	@Override 
    public List<Integer[]> getPairCourseFragmented() { 
        // TODO Auto-generated method stub 
        try{ 
             
            begin(); 
            String hql =  "SELECT rctte.RCTTE_Class_Code, rctte.RCTTE_Semester_Type FROM mRegularCourseTimeTable rctt, mRegularCourseTimeTableEntry rctte" 
                    + " WHERE rctt.RCTT_RCTTE_Code = rctte.RCTTE_Code"; 
            Query query = getSession().createQuery(hql); 
            commit(); 
            List<Object[]> result = query.list(); 
            List<Integer[]> return_result = new ArrayList<Integer[]>(); 
             
            for(int i=1; i<result.size(); i++){ 
                if(result.get(i)[0].equals(result.get(i-1)[0])){ 
                    if(result.get(i)[1].equals("AB")){ 
                        Integer[] tmp = {i-1,i}; 
                        return_result.add(tmp); 
                    } 
                } 
            } 
             
            //System.out.println(name()+"::getClassCodeOfCourse--result"+query.list()); 
            return return_result; 
             
        }catch(HibernateException e){ 
            e.printStackTrace(); 
            rollback(); 
            close(); 
            return null; 
        }finally{ 
            flush(); 
            close(); 
        } 
         
    } 

}
