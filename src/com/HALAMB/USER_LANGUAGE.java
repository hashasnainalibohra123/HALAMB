package com.HALAMB;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class USER_LANGUAGE {
private int l_id;
private String lang;
private int user_id;

public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
@Id
@GeneratedValue
public int getL_id() {
	return l_id;
}
public void setL_id(int l_id) {
	this.l_id = l_id;
}
public String getLang() {
	return lang;
}
public void setLang(String lang) {
	this.lang = lang;
}

}
