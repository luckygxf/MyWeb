package com.gxf.dao;

import java.util.List;

import com.gxf.beans.Blog;
import com.gxf.util.Pager;

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
	
	/**
	 * 进行分页查询
	 * @param pager
	 * @return
	 */
	public List<Blog> queryBlog(Pager pager);
	
	/**
	 * 根据id查询博客内容
	 * @param id
	 * @return
	 */
	public Blog queryBlogById(int id);
	
	/**
	 * 更新博客
	 * @param blog
	 */
	public void updateBlog(Blog blog);
	
	/**
	 * 根据id删除博客
	 * @param id
	 */
	public void deleteBlogById(int id);
}
