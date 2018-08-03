package com.webmedia.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Favorate_list {

	
private int f_id;
private int user_id;
private String fav_list_name;
private int visibility;
@Id
@GeneratedValue
public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFav_list_name() {
		return fav_list_name;
	}
	public void setFav_list_name(String fav_list_name) {
		this.fav_list_name = fav_list_name;
	}
	public int getVisibility() {
		return visibility;
	}
	public void setVisibility(int visibility) {
		this.visibility = visibility;
	}


}
