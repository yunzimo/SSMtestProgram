package com.yunzimo.Bean;


import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Employee implements Serializable {

  private int eid;
  private String ename;
  private String address;
  private String email;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date hirdate;
  private int deptFk;

  private Dept dept;

  public Dept getDept() {
    return dept;
  }

  public void setDept(Dept dept) {
    this.dept = dept;
  }

  public int getEid() {
    return eid;
  }

  public void setEid(int eid) {
    this.eid = eid;
  }


  public String getEname() {
    return ename;
  }

  public void setEname(String ename) {
    this.ename = ename;
  }


  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public Date getHirdate() {
    return hirdate;
  }

  public void setHirdate(Date hirdate) {
    this.hirdate = hirdate;
  }


  public int getDeptFk() {
    return deptFk;
  }

  public void setDeptFk(int deptFk) {
    this.deptFk = deptFk;
  }

  @Override
  public String toString() {
    return "Employee{" +
            "eid=" + eid +
            ", ename='" + ename + '\'' +
            ", address='" + address + '\'' +
            ", email='" + email + '\'' +
            ", hirdate=" + hirdate +
            ", deptFk=" + deptFk +
            ", dept=" + dept +
            '}';
  }
}
