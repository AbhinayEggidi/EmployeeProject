package com.jsp.mvcjpa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.mvcjpa.entity.Emp;

public interface EmpRepository extends JpaRepository<Emp, Integer> {

	List<Emp> findBydeptno(int deptNo);
}
