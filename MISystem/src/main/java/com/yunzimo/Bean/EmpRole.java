package com.yunzimo.Bean;


public class EmpRole {

  private int erid;
  private int roleFk;
  private int empFk;
  private String erdis;

  public EmpRole() {
  }

  public EmpRole(int roleFk, int empFk) {
    this.roleFk = roleFk;
    this.empFk = empFk;
  }

  public int getErid() {
    return erid;
  }

  public void setErid(int erid) {
    this.erid = erid;
  }


  public int getRoleFk() {
    return roleFk;
  }

  public void setRoleFk(int roleFk) {
    this.roleFk = roleFk;
  }


  public int getEmpFk() {
    return empFk;
  }

  public void setEmpFk(int empFk) {
    this.empFk = empFk;
  }


  public String getErdis() {
    return erdis;
  }

  public void setErdis(String erdis) {
    this.erdis = erdis;
  }

}
