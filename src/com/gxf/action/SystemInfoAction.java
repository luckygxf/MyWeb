package com.gxf.action;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.gxf.util.ClientInfo;
import com.opensymphony.xwork2.ActionSupport;

public class SystemInfoAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private ClientInfo clientInfo;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public String toNotFoundPage(){
		
		return SUCCESS;
	}
	
	/**
	 * 获取客户端信息
	 * 浏览器，操作系统等
	 * @return
	 */
	public String getClientInfoAction(){

		String userAgent = request.getHeader("User-Agent");		
		clientInfo = new ClientInfo(userAgent);
	
		System.out.println("userAgent = " + userAgent);
		clientInfo.setBrowserName(clientInfo.getExplorerName());
		clientInfo.setOsName(clientInfo.getOSName());
		
		return SUCCESS;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

	public void setClientInfo(ClientInfo clientInfo) {
		this.clientInfo = clientInfo;
	}

	public ClientInfo getClientInfo() {
		return clientInfo;
	}
	
}
