package com.gxf.action;

import com.gxf.beans.Account;
import com.gxf.dao.AccountDao;
import com.gxf.dao.impl.AccountDaoImp;
import com.opensymphony.xwork2.ActionSupport;

public class ManagerAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Account account;
	private AccountDao accountDao = new AccountDaoImp();
	
	/**
	 * π‹¿Ì‘±µ«¬ΩAction
	 * @return
	 */
	public String login(){
		
		return SUCCESS;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}
	
	
}
