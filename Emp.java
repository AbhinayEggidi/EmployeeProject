package com.jsp.mvcjpa.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Emp
{
	@Id
	@Column(name="empid")
	private int empid;
	@Column(name="ename")
	private String ename;
	@Column(name="sal")
	private double sal;
	@Column(name="deptno")
	private int deptno;
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	@Override
	public String toString() {
		return "Emp [empid=" + empid + ", ename=" + ename + ", sal=" + sal + ", deptno=" + deptno + "]";
	}
	
	
	
}
