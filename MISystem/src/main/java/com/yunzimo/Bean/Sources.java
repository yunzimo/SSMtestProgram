package com.yunzimo.Bean;


import java.util.List;

public class Sources {

  private int id;
  private String name;
  private String url;
  private String remark;
  private int pid;
  private String icon;
  private boolean open;

  private Sources parent;
  private List<Sources> children;

  public boolean isOpen() {
    return open;
  }

  public void setOpen(boolean open) {
    this.open = open;
  }

  public Sources getParent() {
    return parent;
  }

  public void setParent(Sources parent) {
    this.parent = parent;
  }

  public List<Sources> getChildren() {
    return children;
  }

  public void setChildren(List<Sources> children) {
    this.children = children;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }


  public int getPid() {
    return pid;
  }

  public void setPid(int pid) {
    this.pid = pid;
  }


  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }

  @Override
  public String toString() {
    return "Sources{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", url='" + url + '\'' +
            ", remark='" + remark + '\'' +
            ", pid=" + pid +
            ", icon='" + icon + '\'' +
            ", open=" + open +
            ", parent=" + parent +
            ", children=" + children +
            '}';
  }
}
