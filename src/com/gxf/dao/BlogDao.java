package com.gxf.dao;

import java.util.List;

import com.gxf.beans.Blog;
import com.gxf.util.Pager;

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
	
	/**
	 * ���з�ҳ��ѯ
	 * @param pager
	 * @return
	 */
	public List<Blog> queryBlog(Pager pager);
}
