package com.mvc.bean;

public class LoginBean {
private String student_id;
private String password;

public String getUserName() {
return student_id;
}
public void setUserName(String userName) {
this.student_id = userName;
}
public String getPassword() {
return password;
}
public void setPassword(String password) {
this.password = password;
}
}