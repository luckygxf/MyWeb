package com.gxf.dao;

import com.gxf.beans.Comment;

/**
 * �������ݿ������
 * @author Administrator
 *
 */
public interface CommentDao {
	
	/**
	 * �����ݿ����������
	 * @param comment
	 */
	public void addComment(Comment comment);
}
