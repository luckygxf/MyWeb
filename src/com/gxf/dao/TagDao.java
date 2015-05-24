package com.gxf.dao;

import java.util.List;

import com.gxf.beans.Tag;

/**
 * ���ͱ�ǩ
 * @author Administrator
 *
 */
public interface TagDao {
	
	/**
	 * ��ӱ�ǩ
	 * @param tag
	 */
	public void addTag(Tag tag);
	
	/**
	 * ��ѯ���еı�ǩ
	 * @return
	 */
	public List<Tag> queryAllTags();
	
	/**
	 * ����tag���ݲ�ѯtag
	 * @param content
	 * @return
	 */
	public Tag queryTagByContent(String content);
}
