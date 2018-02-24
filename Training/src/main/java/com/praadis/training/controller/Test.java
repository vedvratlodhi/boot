package com.praadis.training.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.praadis.training.bean.Course;
import com.praadis.training.dao.CourseDao;

@Controller
@SessionAttributes("name")
public class Test {

	@Autowired
	CourseDao courseDao;
//	
    @RequestMapping(value="/", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model){
    	//System.out.println(courseDao.findAllCourse());
        return "test2";
    }

    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String showWelcomePage(ModelMap model){

    /* for(int i=0;i<1000;i++)
     {
    	 Course c = new Course();
    	 c.setCourseName("name"+i);
    	 c.setDuration(100+i);
    	 c.setFees(10000.0f+i);
    	 courseDao.saveandupdate(c);
     }*/
        return "welcome";
    }
   

}