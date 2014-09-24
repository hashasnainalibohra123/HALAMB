package com.HALAMB;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class USER_EXTRA_INFO {
	@Id
	@GeneratedValue
private int id;
private int user_id;
private String contact_info;
private String website;
private String interests;
private String about_me;
private String seeking;
private String relationship;
private String kids;
private String religion;
private String education;
private String ethnicity;
private String height_text;
private String weight_text;
private String body_unit;
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
public String getContact_info() {
	return contact_info;
}
public void setContact_info(String contact_info) {
	this.contact_info = contact_info;
}
public String getWebsite() {
	return website;
}
public void setWebsite(String website) {
	this.website = website;
}
public String getInterests() {
	return interests;
}
public void setInterests(String interests) {
	this.interests = interests;
}
public String getAbout_me() {
	return about_me;
}
public void setAbout_me(String about_me) {
	this.about_me = about_me;
}
public String getSeeking() {
	return seeking;
}
public void setSeeking(String seeking) {
	this.seeking = seeking;
}
public String getRelationship() {
	return relationship;
}
public void setRelationship(String relationship) {
	this.relationship = relationship;
}
public String getKids() {
	return kids;
}
public void setKids(String kids) {
	this.kids = kids;
}
public String getReligion() {
	return religion;
}
public void setReligion(String religion) {
	this.religion = religion;
}
public String getEducation() {
	return education;
}
public void setEducation(String education) {
	this.education = education;
}
public String getEthnicity() {
	return ethnicity;
}
public void setEthnicity(String ethnicity) {
	this.ethnicity = ethnicity;
}
public String getHeight_text() {
	return height_text;
}
public void setHeight_text(String height_text) {
	this.height_text = height_text;
}
public String getWeight_text() {
	return weight_text;
}
public void setWeight_text(String weight_text) {
	this.weight_text = weight_text;
}
public String getBody_unit() {
	return body_unit;
}
public void setBody_unit(String body_unit) {
	this.body_unit = body_unit;
}


}
