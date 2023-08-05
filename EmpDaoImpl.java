package com.jsp.mvcjpa.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.mvcjpa.entity.Emp;
import com.jsp.mvcjpa.repository.EmpRepository;
@Component
public class EmpDaoImpl implements EmpDao{
	@Autowired
	public EmpRepository repo;
	@Override
	public Emp registration(Emp emp)
	{
		Emp employee=repo.save(emp);
		return employee;
	}
	@Override
	public Emp login(int empid) {
		 try {
			Emp emp=repo.findById(empid).get();
			return emp;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}
	@Override
	public List<Emp> searchByDept(int deptNo) {
		 List<Emp> list=repo.findBydeptno(deptNo);
		return list;
	}
	 
	
}
