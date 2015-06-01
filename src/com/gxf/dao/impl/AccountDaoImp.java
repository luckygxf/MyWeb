package com.gxf.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gxf.beans.Account;
import com.gxf.dao.AccountDao;
import com.gxf.util.Util;

/**
 * 后台管理员账户
 * @author Administrator
 *
 */
public class AccountDaoImp implements AccountDao {

	private BaseDao baseDao = new BaseDao();
	private Util util = new Util();
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.AccountDao#addAcctount(com.gxf.beans.Account)
	 */
	@Override
	public void addAccount(Account account) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		//对密码进行MD5加密
		String password_md5 = util.stringMD5(account.getPassword());
		account.setPassword(password_md5);
		//将用户信息保存到数据库中
		session.save(account);
		
		session.getTransaction().commit();
		
		session.close();

	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.AccountDao#validAccount(com.gxf.beans.Account)
	 */
	@Override
	public boolean validAccount(Account account) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		String hql = "from Account a where a.loginId = ? and a.password = ?";
		//对密码进行MD5加密
		String password_md5 = util.stringMD5(account.getPassword());
		account.setPassword(password_md5);
		
		Query query = session.createQuery(hql);
		query.setString(0, account.getLoginId());
		query.setString(1, account.getPassword());
		
		List<Account> listOfAccount = query.list();
		
		session.getTransaction().commit();
		session.close();
		
		if(listOfAccount.size() == 0)
			return false;
		return true;
	}

}
