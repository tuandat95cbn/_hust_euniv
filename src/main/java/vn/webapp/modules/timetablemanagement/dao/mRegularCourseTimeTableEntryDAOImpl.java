package vn.webapp.modules.timetablemanagement.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.dao.BaseDao;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTableEntry;
@Repository
public class mRegularCourseTimeTableEntryDAOImpl extends BaseDao implements mRegularCourseTimeTableEntryDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	@Override
	public List<mRegularCourseTimeTableEntry>  getAllCourseTimeTableEntry() {
		// TODO Auto-generated method stub
		try{
		begin();
		Criteria criteria= getSession().createCriteria(mRegularCourseTimeTableEntry.class);
		List <mRegularCourseTimeTableEntry> listRegularCourseTimeTableEntry = criteria.list();
		commit();
		return listRegularCourseTimeTableEntry;
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
	public int saveARegularCourseTimeTableEntry(mRegularCourseTimeTableEntry rctte) {
		// TODO Auto-generated method stub
		try {
            begin();
            int id = 0; 
            getSession().save(rctte);
            commit();
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
	@Override
	public int removeRegularCourseTimeTableEntry_ColumnName_Equal(String columnName, String value) {
		// TODO Auto-generated method stub
		try {
            begin();
            Query query = getSession().createQuery("DELETE FROM mRegularCourseTimeTableEntry where "+ columnName +" = :value");
            //System.out.println(name()+"removeRegularCourseTimeTable_ColumnName_Equal "+"DELETE FROM mRegularCourseTimeTableEntry where "+ columnName +" = :value");
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
	public String name(){
		return "mRegularCourseTimeTableEntryDAOImpl";
	}
	
	@Override
	public List<Integer> getCourseMaxRegister() {
		// TODO Auto-generated method stub
		try{
			begin();
			Criteria criteria = getSession().createCriteria(mRegularCourseTimeTableEntry.class).setProjection(Projections.property("RCTTE_Course_MaxRegister"));
			List result = criteria.list();
			
			System.out.println(name()+"::getCourseMaxRegister--size of list"+result.size());
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
}
