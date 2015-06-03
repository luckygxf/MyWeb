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
	 * 管理员登陆Action
	 * @return
	 */
	public String login(){
		if(session.get("accountName") != null){
			return SUCCESS;
		}
		if(accountDao.validAccount(account))
		{
			//将用户信息放到session中
			session.put("accountName", account.getLoginId());
			return SUCCESS;
		}
		
		session.put("isValid", "false");
		
		return LOGIN;
	}
	
	/**
	 * 获取顶部网页需要显示的内容
	 * @return
	 */
	public String getTopInfoAction(){
		
		return SUCCESS;
	}
	
	/**
	 * 获取菜单信息
	 * @return
	 */
	public String getMenuInfoAction(){
		return SUCCESS;
	}
	
	public String getMainAction(){
		return SUCCESS;
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
