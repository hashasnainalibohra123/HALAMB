package com.webmedia.model;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

import com.webmedia.model.USER_INFO;

@Embeddable
public class USER_INFO_IMAGE_DATA_ID implements java.io.Serializable
{
	private static final long serialVersionUID = -9120607274421816301L;
	private USER_INFO u;
	private IMAGE_DATA m;
	@ManyToOne
	public USER_INFO getU() {
		return u;
	}
	
	public void setU(USER_INFO u) {
		this.u = u;
	}
	@ManyToOne
	public IMAGE_DATA getM() {
		return m;
	}

	public void setM(IMAGE_DATA m) {
		this.m = m;
	}
	
	

}
