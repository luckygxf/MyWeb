package com.gxf.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.ng.servlet.ServletHostConfig;
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
	 * ����Ա��½Action
	 * @return
	 */
	public String login(){
		System.out.println("sessioinId = " + session.size());
		if(session.get("accountName") != null){
			return SUCCESS;
		}
		if(accountDao.validAccount(account))
		{
			//���û���Ϣ�ŵ�session��
			session.put("accountName", account.getLoginId());
			HttpServletRequest request = ServletActionContext.getRequest ();
			request.getSession().setAttribute("accountName", account.getLoginId());
			return SUCCESS;
		}
		
		session.put("isValid", "false");
		
		return LOGIN;
	}
	
	/**
	 * ��ȡ������ҳ��Ҫ��ʾ������
	 * @return
	 */
	public String getTopInfoAction(){
		
		return SUCCESS;
	}
	
	/**
	 * �˳�ϵͳ
	 * @return
	 */
	public String loginOut(){
		//���session
		session.clear();
		session = null;
		
		return SUCCESS;
	}
	
	/**
	 * ��ȡ�˵���Ϣ
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
