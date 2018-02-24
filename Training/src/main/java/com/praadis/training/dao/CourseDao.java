package com.praadis.training.dao;

import java.util.List;

import com.praadis.training.bean.Course;

public interface CourseDao {

	public List<Course> findAllCourse(); 
	public Boolean saveandupdate(Course course);
	public List<Course> findAllCourseUL(Integer lower,Integer upper);
}
