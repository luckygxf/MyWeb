package com.gxf.dao;

import com.gxf.beans.Account;

/**
 * 管理员账户数据库访问接口
 * @author Administrator
 *
 */
public interface AccountDao {
	
	/**
	 * 添加管理员账户
	 * @param account
	 */
	public void addAcctount(Account account);
}
