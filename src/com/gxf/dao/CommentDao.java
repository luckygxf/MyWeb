package com.gxf.dao;

import com.gxf.beans.Comment;

/**
 * 评论数据库访问类
 * @author Administrator
 *
 */
public interface CommentDao {
	
	/**
	 * 向数据库中添加评论
	 * @param comment
	 */
	public void addComment(Comment comment);
}
