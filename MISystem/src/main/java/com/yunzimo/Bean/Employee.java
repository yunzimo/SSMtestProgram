package com.yunzimo.Bean;


import java.util.Date;

public class Employee {

  private int eid;
  private String ename;
  private String esex;
  private int eage;
  private String telephone;
  private Date hiredate;
  private String pnum;
  private String username;
  private String password;
  private String remark;
  private int dfk;
  private String pic;
  private int roleid;

  public int getRoleid() {
    return roleid;
  }

  public void setRoleid(int roleid) {
    this.roleid = roleid;
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


  public String getEsex() {
    return esex;
  }

  public void setEsex(String esex) {
    this.esex = esex;
  }


  public int getEage() {
    return eage;
  }

  public void setEage(int eage) {
    this.eage = eage;
  }


  public String getTelephone() {
    return telephone;
  }

  public void setTelephone(String telephone) {
    this.telephone = telephone;
  }


  public Date getHiredate() {
    return hiredate;
  }

  public void setHiredate(Date hiredate) {
    this.hiredate = hiredate;
  }


  public String getPnum() {
    return pnum;
  }

  public void setPnum(String pnum) {
    this.pnum = pnum;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }


  public int getDfk() {
    return dfk;
  }

  public void setDfk(int dfk) {
    this.dfk = dfk;
  }


  public String getPic() {
    return pic;
  }

  public void setPic(String pic) {
    this.pic = pic;
  }

  @Override
  public String toString() {
    return "Employee{" +
            "eid=" + eid +
            ", ename='" + ename + '\'' +
            ", esex='" + esex + '\'' +
            ", eage=" + eage +
            ", telephone='" + telephone + '\'' +
            ", hiredate=" + hiredate +
            ", pnum='" + pnum + '\'' +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", remark='" + remark + '\'' +
            ", dfk=" + dfk +
            ", pic='" + pic + '\'' +
            ", roleid=" + roleid +
            '}';
  }
}
