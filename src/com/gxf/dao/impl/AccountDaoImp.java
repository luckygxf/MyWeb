package com.gxf.dao.impl;

import org.hibernate.Session;

import com.gxf.beans.Account;
import com.gxf.dao.AccountDao;

/**
 * 后台管理员账户
 * @author Administrator
 *
 */
public class AccountDaoImp implements AccountDao {

	private BaseDao baseDao = new BaseDao();
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.AccountDao#addAcctount(com.gxf.beans.Account)
	 */
	@Override
	public void addAcctount(Account account) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		session.save(account);
		
		session.getTransaction().commit();
		
		session.close();

	}

}
