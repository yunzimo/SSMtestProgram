package com.yunzimo.Bean;


import java.io.Serializable;

public class Resources implements Serializable {

  private int id;
  private String text;
  private String href;


  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }


  public String getHref() {
    return href;
  }

  public void setHref(String href) {
    this.href = href;
  }

  @Override
  public String toString() {
    return "Resources{" +
            "id=" + id +
            ", text='" + text + '\'' +
            ", href='" + href + '\'' +
            '}';
  }
}
