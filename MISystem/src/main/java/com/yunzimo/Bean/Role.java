package com.yunzimo.Bean;


public class Role {

  private int roleid;
  private String rolename;
  private String roledis;
  private int status;


  public int getRoleid() {
    return roleid;
  }

  public void setRoleid(int roleid) {
    this.roleid = roleid;
  }


  public String getRolename() {
    return rolename;
  }

  public void setRolename(String rolename) {
    this.rolename = rolename;
  }


  public String getRoledis() {
    return roledis;
  }

  public void setRoledis(String roledis) {
    this.roledis = roledis;
  }


  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

  @Override
  public String toString() {
    return "Role{" +
            "roleid=" + roleid +
            ", rolename='" + rolename + '\'' +
            ", roledis='" + roledis + '\'' +
            ", status=" + status +
            '}';
  }
}
