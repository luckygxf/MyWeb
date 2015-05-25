package com.gxf.dao.impl;

import org.hibernate.Session;

import com.gxf.beans.Comment;
import com.gxf.dao.CommentDao;

public class CommentDaoImp implements CommentDao {

	private BaseDao baseDao = new BaseDao();
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.CommentDao#addComment(com.gxf.beans.Comment)
	 */
	@Override
	public void addComment(Comment comment) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		session.save(comment);
		
		session.getTransaction().commit();
		session.close();
	}

}
