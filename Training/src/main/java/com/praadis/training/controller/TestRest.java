package com.praadis.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.praadis.training.bean.Course;
import com.praadis.training.dao.CourseDao;

@RestController
public class TestRest {
 @Autowired
 CourseDao courseDao;
 
	Course course = new Course();
	
	 @RequestMapping(value = "/rest", method = RequestMethod.GET, produces = "application/json")
	    public Course getEmployeeInJSON() {
		 course.setCourseName("test course rest");
	       return course;
	    }
	 
	 @RequestMapping(value = "/restl", method = RequestMethod.GET, produces = "application/json")
	    public List<Course> getEmployeeIJSON() {
	       return courseDao.findAllCourseUL(0,20);
	    }
	 @RequestMapping(value = "/rest2", method = RequestMethod.GET, produces = "application/json")
	 public List<Course> getEmployeeIJSO( @RequestParam Integer lower , @RequestParam Integer upper)
	 {
		return courseDao.findAllCourseUL(lower ,upper);
		 
	 }
}
