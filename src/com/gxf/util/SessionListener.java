package com.gxf.util;

import java.util.Date;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {
	private Date startDate;
	private Date endDate;
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		startDate = new Date();
		System.out.println("session created!");

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		endDate = new Date();
		System.out.println("session destoryed!");
		
		System.out.println("start date = " + startDate);
		System.out.println("end date = " + endDate);
	}

}
