package com.webmedia.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Favorate_Item {

	
private int fi_id;
private int user_id;
private String fav_list_name;
private Date fav_date;

@Temporal(TemporalType.DATE)
public Date getFav_date() {
	return fav_date;
}
public void setFav_date(Date fav_date) {
	this.fav_date = fav_date;
}
private int image_id;
@Id
@GeneratedValue
public int getFi_id() {
	return fi_id;
}
public void setFi_id(int fi_id) {
	this.fi_id = fi_id;
}
public int getImage_id() {
	return image_id;
}
public void setImage_id(int image_id) {
	this.image_id = image_id;
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

}
