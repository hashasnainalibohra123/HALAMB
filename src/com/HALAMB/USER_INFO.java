package com.HALAMB;




import java.util.Date;
import java.util.HashSet;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public class USER_INFO {
	private int user_id;
	private String email;
	private String profile_name;
	private String pass;
	private String sex;
	private int age;

	private String user_name;
	private Date dob1;
	private String Country;
	private String region;
	private String city;
	private int varified;
	private Date signupdate;
	private String Aboutme;
	public String getAboutme() {
		return Aboutme;
	}
	public void setAboutme(String aboutme) {
		Aboutme = aboutme;
	}
	@Temporal(TemporalType.DATE)
	public Date getSignupdate() {
		return signupdate;
	}
	public void setSignupdate(Date signupdate) {
		this.signupdate = signupdate;
	}
	private Set<USER_INFO_IMAGE_DATA> studentClasses = new HashSet<USER_INFO_IMAGE_DATA>(0);


	@OneToMany(fetch = FetchType.LAZY, mappedBy = "id.u", cascade=CascadeType.ALL)
     public Set<USER_INFO_IMAGE_DATA> getStudentClasses() {
		return studentClasses;
	}
	public void setStudentClasses(Set<USER_INFO_IMAGE_DATA> studentClasses) {
		this.studentClasses = studentClasses;
	}
	@Id 
@GeneratedValue
	public int getUser_id() {
		return user_id;
	}
	public int getVarified() {
		return varified;
	}
	public void setVarified(int varified) {
		this.varified = varified;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getProfile_name() {
		return profile_name;
	}
	public void setProfile_name(String profile_name) {
		this.profile_name = profile_name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Temporal(TemporalType.DATE)
	public void setDob1(Date dob1) {
		this.dob1 = dob1;
	}
	public Date getDob1() {
		return dob1;
	}
	
}
