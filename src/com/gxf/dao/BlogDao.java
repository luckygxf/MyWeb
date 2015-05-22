package com.gxf.dao;

import com.gxf.beans.Blog;

/**
 * 对博客表操作
 * @author Administrator
 *
 */
public interface BlogDao {
	
	/**
	 * 添加博客
	 * @param blog
	 */
	public void addBlog(Blog blog);
}
