package com.webmedia.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class User_profile_pic {
	private int id;
	private int user_id;
	private String formate;
	public String getFormate() {
		return formate;
	}
	public void setFormate(String formate) {
		this.formate = formate;
	}
	private String link;
	private java.util.Date upload_date;
	private double data_size;
	public double getData_size() {
		return data_size;
	}
	public void setData_size(double data_size) {
		this.data_size = data_size;
	}
	@Id 
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	@Temporal(TemporalType.DATE)
	public java.util.Date getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(java.util.Date upload_date) {
		this.upload_date = upload_date;
	}

}
