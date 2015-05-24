package com.gxf.dao;

import java.util.List;

import com.gxf.beans.Tag;

/**
 * 博客标签
 * @author Administrator
 *
 */
public interface TagDao {
	
	/**
	 * 添加标签
	 * @param tag
	 */
	public void addTag(Tag tag);
	
	/**
	 * 查询所有的标签
	 * @return
	 */
	public List<Tag> queryAllTags();
	
	/**
	 * 根据tag内容查询tag
	 * @param content
	 * @return
	 */
	public Tag queryTagByContent(String content);
}
