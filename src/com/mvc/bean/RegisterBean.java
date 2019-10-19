package com.mvc.bean;
 
public class RegisterBean {
 
 private String fullName;
 private String cellno;
 private String fathername;
 private String roomid;
 private String dept;
 private String dob;
 private String regid;
 private String password;
 private int year;
 private String status;
 
 public String getRegid() {
 return regid;
 }
 public void setRegid(String regid) {
 this.regid = regid;
 }
 public String getDept() {
 return dept;
 }
 public void setDept(String dept) {
 this.dept = dept;
 }
 public String getDob() {
 return dob;
 }
 public void setDoB(String dob) {
 this.dob = dob;
 }
 public String getRoomid() {
 return roomid;
 }
 public void setRoomid(String roomid) {
 this.roomid = roomid;
 }
 public void setFatherName(String fathername) {
 this.fathername = fathername;
 }
 public String getFatherName() {
 return fathername;
 }
 public String getPassword() {
 return password;
 }
 public void setPassword(String password) {
 this.password = password;
 }
 public void setFullName(String fullName) {
 this.fullName = fullName;
 }
 public String getFullName() {
 return fullName;
 }
 public void setCellno(String email) {
 this.cellno = email;
 }
 public String getCellno() {
 return cellno;
 }
 public void setYear(int year) {
 this.year= year;
 }
 public int getYear() {
 return year;
 }
 public void setStatus(String status) {
 this.status= status;
 }
 public String getStatus() {
 return status;
 }
 
 }
