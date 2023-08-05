package com.jsp.mvcjpa.homecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.mvcjpa.dao.EmpDao;
import com.jsp.mvcjpa.entity.Emp;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public ModelAndView display()
	{
		//return "Home.jsp";
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Home");
		return mv;			
	}
	
	@Autowired
	private EmpDao dao;
	// to perform Employee Registration
	@RequestMapping("/register")
	public ModelAndView performRegistation(@ModelAttribute Emp emp)
	{
		Emp employee=dao.registration(emp);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Home");
		mv.addObject("name",employee.getEname());
		mv.addObject("msg","Registration Succesfull!!!!");
		return mv;
	}
	
	//perform login page operation
	@RequestMapping("/login")
	public ModelAndView performLogin(@RequestParam("id") int empid)
	{
		Emp emp=dao.login(empid);
		ModelAndView mv=new ModelAndView();
		if (emp!=null)
		{
			mv.setViewName("Sucess");
			mv.addObject("msg","Login Succesfull");
			
		}
		else
		{
			 mv.setViewName("Login");
			 mv.addObject("msg","Invalid emp id");
		}
		return mv;
	}
	
	
	//to display login page
	@RequestMapping("/loginpage")
	public String showLogin()
	{
		 return "Login";
	}	
	
	//to display employee details by department
	@RequestMapping("/displayInfo")
	public ModelAndView showDetails(@RequestParam("dept")int deptNo)
	{
		List<Emp> list=dao.searchByDept(deptNo);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("DisplayInfo");
		if (list.size()>0)
		{
			 
			mv.addObject("result",list);
		}
		else
		{
			mv.addObject("msg","No records found");
		}
		return mv;
	}
	@RequestMapping("/emp")
	public String employeepage()
	{
		 return "EmployeePage";
	}	
	
	
}
