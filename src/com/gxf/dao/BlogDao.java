package com.gxf.dao;

import java.util.List;

import com.gxf.beans.Blog;

/**
 * �Բ��ͱ����
 * @author Administrator
 *
 */
public interface BlogDao {
	
	/**
	 * ��Ӳ���
	 * @param blog
	 */
	public void addBlog(Blog blog);
	
	/**
	 * ��ѯ���еĲ���
	 * @return
	 */
	public List<Blog> queryAllBlog();
}
