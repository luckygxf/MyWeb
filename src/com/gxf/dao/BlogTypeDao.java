package com.gxf.dao;

import java.util.List;

import com.gxf.beans.BlogType;

/**
 * �����������ݿ����
 * @author Administrator
 *
 */
public interface BlogTypeDao {

	/**
	 * ��Ӳ�������
	 * @param blogType
	 */
	public void addBlogType(BlogType blogType);
	
	/**
	 * ��ѯ���з���
	 * @return
	 */
	public List<BlogType> queryAllBlogType();
	
	/**
	 * ���ݲ�������ID��ѯ��������
	 * @param id
	 * @return
	 */
	public BlogType queryBlogById(int id);
	
	/**
	 * ���²�������
	 * @param blogType
	 */
	public void updateBlogType(BlogType blogType);
	
	/**
	 * ���ݲ���idɾ������
	 * @param id
	 */
	public void deleteBlogTypeById(int id);
}
