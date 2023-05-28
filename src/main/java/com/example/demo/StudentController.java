package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class StudentController {

@Autowired
	StudentDAO dao;

	@RequestMapping("/")       
public ModelAndView loadfrontpage(jakarta.servlet.http.HttpServletRequest request,jakarta.servlet.http.HttpServletResponse response) {
ModelAndView mv=new ModelAndView();
mv.setViewName("index");
return mv;
	}
	

	@RequestMapping("/insert")       
public ModelAndView insert(jakarta.servlet.http.HttpServletRequest request,jakarta.servlet.http.HttpServletResponse response) {
ModelAndView mv=new ModelAndView();
Student s=new Student();
s.setName(request.getParameter("Name"));
s.setEmail(request.getParameter("Email"));
Student ss=dao.insert(s);
if(ss!=null) {
mv.setViewName("display");
}
else {
mv.setViewName("fail");
}
return mv;
	}
	

	@RequestMapping("/getAll")       
public ModelAndView getAll(jakarta.servlet.http.HttpServletRequest request,jakarta.servlet.http.HttpServletResponse response) {
ModelAndView mv=new ModelAndView();
List<Student> list=dao.getAll();
mv.setViewName("displaystudent");
mv.addObject("list",list);
return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response) {
	ModelAndView mv=new ModelAndView();
	Student s=new Student();
	s.setId(Integer.parseInt(request.getParameter("id")));
	s.setName(request.getParameter("name"));
	s.setEmail(request.getParameter("email"));
	request.getAttribute("id");
	Student ss=dao.update(s);
	List<Student> list=dao.getAll();
	mv.setViewName("displaystudent");
	mv.addObject("list", list);
		return mv;	
	}
	

	@RequestMapping("/delete")       
public ModelAndView delete(jakarta.servlet.http.HttpServletRequest request,jakarta.servlet.http.HttpServletResponse response) {
ModelAndView mv=new ModelAndView();
Student s=new Student();
int id=Integer.parseInt(request.getParameter("id"));
//s.setId(id);
System.out.println("Enter the id number?");
request.getAttribute("id");
dao.delete(id);
List<Student> list=dao.getAll();
mv.setViewName("displaystudent");
mv.addObject("list",list);
return mv;
	}

}
