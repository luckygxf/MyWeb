package com.gxf.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.gxf.beans.Account;
import com.gxf.dao.AccountDao;
import com.gxf.dao.impl.AccountDaoImp;
import com.opensymphony.xwork2.ActionSupport;

public class ManagerAction extends ActionSupport implements SessionAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Account account;
	private AccountDao accountDao = new AccountDaoImp();
	private Map<String, Object> session;
	
	/**
	 * π‹¿Ì‘±µ«¬ΩAction
	 * @return
	 */
	public String login(){
		System.out.println("in loginAction");
		if(accountDao.validAccount(account))
		{
			return SUCCESS;
		}
		
		session.put("isValid", "false");
		
		return LOGIN;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}

	public Map<String, Object> getSession() {
		return session;
	}
	
	
}
