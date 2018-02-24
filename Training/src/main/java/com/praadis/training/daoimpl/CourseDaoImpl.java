package com.praadis.training.daoimpl;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.praadis.training.bean.Course;
import com.praadis.training.dao.CourseDao;

@Transactional
@Repository
public class CourseDaoImpl implements CourseDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Course> findAllCourse() {
		return sessionFactory.getCurrentSession().createQuery("FROM Course").list();
	}

	@Override
	public Boolean saveandupdate(Course course) {
		try
		{
			sessionFactory.getCurrentSession().save(course);
			return true;
		}catch (Exception e) {	
			e.printStackTrace();
			return null;
		}
	}

	public List<Course> findAllCourseUL(Integer lower,Integer upper) {
	return sessionFactory.getCurrentSession().createQuery("from Course  desc").setFirstResult(lower).setMaxResults(upper).list();
	} 
	
}
