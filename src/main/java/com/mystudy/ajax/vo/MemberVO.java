package com.mystudy.ajax.vo;

import java.util.Date;

public class MemberVO {
  private int idx;
  private String name;
  private int age;
  private String address;
  private Date regDate;

  public MemberVO() {
  }

  public MemberVO(int idx, String name, int age, String address, Date regDate) {
    this.idx = idx;
    this.name = name;
    this.age = age;
    this.address = address;
    this.regDate = regDate;
  }

  public int getIdx() {
    return idx;
  }

  public void setIdx(int idx) {
    this.idx = idx;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public Date getRegDate() {
    return regDate;
  }

  public void setRegDate(Date regDate) {
    this.regDate = regDate;
  }

  @Override
  public String toString() {
    return "  {\n"
        + "  \"idx\": " + idx + ",\n"
        + "  \"name\": \"" + name + "\",\n"
        + "  \"age\": " + "\"" + age + "\""+ ",\n"
        + "  \"address\": \"" + address + "\",\n"
        + "  \"regDate\": \"" + regDate + "\"\n"
        + "  }";
  }

}
