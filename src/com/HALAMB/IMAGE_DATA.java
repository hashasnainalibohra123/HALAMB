package com.HALAMB;

import java.util.Date;
import java.util.HashSet;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;






@Entity
public class IMAGE_DATA {

	private int user_id;
	private int image_id;
	private String image_name;
	private java.util.Date upload_date;
	private int rate;
	private double data_size;
	private String formate;
	private String pixel_size;
	private String link;
	
	private Set<USER_INFO_IMAGE_DATA> studentClasses = new HashSet<USER_INFO_IMAGE_DATA>(0);
	
	
	
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "id.m", cascade=CascadeType.ALL)
	public Set<USER_INFO_IMAGE_DATA> getStudentClasses() {
		return studentClasses;
	}
	public void setStudentClasses(Set<USER_INFO_IMAGE_DATA> studentClasses) {
		this.studentClasses = studentClasses;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String string) {
		this.image_name = string;
	}
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	@Id 
	@GeneratedValue
	public int getImage_id() {
		return image_id;
	}
	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}
	@Temporal(TemporalType.DATE)
	public Date getUpload_date() {
		return (Date) upload_date;
	}
	
	public void setUpload_date(java.util.Date upload_date) {
		this.upload_date = upload_date;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public double getData_size() {
		return data_size;
	}
	public void setData_size(double data_size) {
		this.data_size = data_size;
	}
	public String getFormate() {
		return formate;
	}
	public void setFormate(String formate) {
		this.formate = formate;
	}
	public String getPixel_size() {
		return pixel_size;
	}
	public void setPixel_size(String pixel_size) {
		this.pixel_size = pixel_size;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
}
