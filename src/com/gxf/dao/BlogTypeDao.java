package com.gxf.dao;

import com.gxf.beans.BlogType;

/**
 * 博客类型数据库访问
 * @author Administrator
 *
 */
public interface BlogTypeDao {

	/**
	 * 添加博客类型
	 * @param blogType
	 */
	public void addBlogType(BlogType blogType);
}
