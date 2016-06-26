package vn.webapp.modules.timetablemanagement.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.dao.BaseDao;
import vn.webapp.modules.timetablemanagement.model.mRegularCourseTimeTable;
import vn.webapp.modules.timetablemanagement.model.mRooms;
@Repository
public class mRoomsDaoImpl extends BaseDao implements mRoomsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	@Override
	public List<mRooms> getAllRoom() {
		// TODO Auto-generated method stub
		try{
			begin();
			Criteria criteria= getSession().createCriteria(mRooms.class);
			List<mRooms> lR = criteria.list();
			commit();
			return lR;
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
	public List<Integer> getListRoomCapacity() {
		// TODO Auto-generated method stub
		
		try{
			begin();
			Criteria criteria= getSession().createCriteria(mRooms.class).setProjection(Projections.property("R_Capacity"));;
			List lR = criteria.list();
			commit();
			return lR;
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

}
