package com.gxf.dao;

import com.gxf.beans.Account;

/**
 * ����Ա�˻����ݿ���ʽӿ�
 * @author Administrator
 *
 */
public interface AccountDao {
	
	/**
	 * ��ӹ���Ա�˻�
	 * @param account
	 */
	public void addAccount(Account account);
	
	/**
	 * ��֤�û���������
	 * @param account
	 * @return
	 */
	public boolean validAccount(Account account);
}
