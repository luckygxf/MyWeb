package com.gxf.dao;

import java.util.List;

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
	
	/**
	 * 查询所有的博客
	 * @return
	 */
	public List<Blog> queryAllBlog();
}
