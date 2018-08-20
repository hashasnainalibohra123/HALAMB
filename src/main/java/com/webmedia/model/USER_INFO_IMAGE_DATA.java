package com.webmedia.model;

import java.util.Date;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import com.webmedia.model.USER_INFO;

@Entity
@Table(name = "USER_IMAGE")
@AssociationOverrides({
		@AssociationOverride(name = "id.u", 
			joinColumns = @JoinColumn(name = "user_id")),
		@AssociationOverride(name = "id.m", 
			joinColumns = @JoinColumn(name = "image_id")) })
public class USER_INFO_IMAGE_DATA {
	private static final long serialVersionUID = 4050660680047579957L;
	
	private USER_INFO_IMAGE_DATA_ID id=new USER_INFO_IMAGE_DATA_ID(); 
	@EmbeddedId
	public USER_INFO_IMAGE_DATA_ID getId() {
		return id;
	}
	public void setId(USER_INFO_IMAGE_DATA_ID id) {
		this.id = id;
	}
	private String comment;
	private Date comment_date;
	private int likes;
	
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	@Temporal(TemporalType.DATE)
	public java.util.Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(java.util.Date comment_date) {
		this.comment_date = comment_date;
	}
	
	
	///....................why..................
	@Transient
	public USER_INFO getUSER_INFO() {
		return getId().getU();
	}
 
	public void setUSER_INFO(USER_INFO student) {
		getId().setU(student);
	}
 
	@Transient
	public IMAGE_DATA getIMAGE_DATA() {
		return getId().getM();
	}
 
	public void setIMAGE_DATA(IMAGE_DATA m) {
		getId().setM(m);
	}
 
	
	
	

}
