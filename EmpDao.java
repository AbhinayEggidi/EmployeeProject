package com.jsp.mvcjpa.dao;

import java.util.List;

import com.jsp.mvcjpa.entity.Emp;

public interface EmpDao 
{
	Emp registration(Emp emp);
	
	 Emp login(int empid);
	 
	 List<Emp> searchByDept(int deptNo);
	 
}
