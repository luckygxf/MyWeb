package com.gxf.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gxf.beans.Account;
import com.gxf.dao.AccountDao;
import com.gxf.util.Util;

/**
 * ��̨����Ա�˻�
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
		
		//���������MD5����
		String password_md5 = util.stringMD5(account.getPassword());
		account.setPassword(password_md5);
		//���û���Ϣ���浽���ݿ���
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
		//���������MD5����
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
