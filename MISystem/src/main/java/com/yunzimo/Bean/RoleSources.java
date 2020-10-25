package com.yunzimo.Bean;


public class RoleSources {

  private int rsid;
  private String rsdis;
  private int resourcesFk;
  private int roleFk;


  public int getRsid() {
    return rsid;
  }

  public void setRsid(int rsid) {
    this.rsid = rsid;
  }


  public String getRsdis() {
    return rsdis;
  }

  public void setRsdis(String rsdis) {
    this.rsdis = rsdis;
  }


  public int getResourcesFk() {
    return resourcesFk;
  }

  public void setResourcesFk(int resourcesFk) {
    this.resourcesFk = resourcesFk;
  }


  public int getRoleFk() {
    return roleFk;
  }

  public void setRoleFk(int roleFk) {
    this.roleFk = roleFk;
  }

  @Override
  public String toString() {
    return "RoleSources{" +
            "rsid=" + rsid +
            ", rsdis='" + rsdis + '\'' +
            ", resourcesFk=" + resourcesFk +
            ", roleFk=" + roleFk +
            '}';
  }
}
