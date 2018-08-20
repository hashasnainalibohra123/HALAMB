package com.webmedia.services;

import java.io.File;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DBService {
	private static SessionFactory sessionFacotory ;
	private DBService()
	{
	}

	public static SessionFactory getFacotorySession()
	{
		if(sessionFacotory == null)
		{
			Configuration  configuration = new Configuration().configure(new File("C:\\Users\\haliboh\\git\\HALAMB\\hibernate.cfg.xml"));
			return configuration.buildSessionFactory();
		}
		return sessionFacotory;

	}
}