package com.gxf.dao;

import java.util.List;

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
	
	/**
	 * 查询所有分类
	 * @return
	 */
	public List<BlogType> queryAllBlogType();
	
	/**
	 * 根据博客类型ID查询博客类型
	 * @param id
	 * @return
	 */
	public BlogType queryBlogById(int id);
	
	/**
	 * 更新博客类型
	 * @param blogType
	 */
	public void updateBlogType(BlogType blogType);
	
	/**
	 * 根据博客id删除博客
	 * @param id
	 */
	public void deleteBlogTypeById(int id);
}
