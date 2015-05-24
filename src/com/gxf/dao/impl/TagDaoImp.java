package com.gxf.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gxf.beans.Tag;
import com.gxf.dao.TagDao;

public class TagDaoImp implements TagDao {
	
	private BaseDao baseDao = new BaseDao();
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.TagDao#addTag(com.gxf.beans.Tag)
	 */
	@Override
	public void addTag(Tag tag) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		session.save(tag);
		
		session.getTransaction().commit();
		session.close();
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.TagDao#queryAllTags()
	 */
	@Override
	public List<Tag> queryAllTags() {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		String hql = "from Tag";
		Query query = session.createQuery(hql);
		
		List<Tag> listOfTag = new ArrayList<Tag>();
		listOfTag = query.list();
		
		session.getTransaction().commit();
		session.close();
		
		return listOfTag;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.TagDao#queryTagByContent(java.lang.String)
	 */
	@Override
	public Tag queryTagByContent(String content) {
		Session session = baseDao.getSession();
		session.beginTransaction();
		
		String hql = "from Tag t where t.content = ?";
		Query query = session.createQuery(hql);
		query.setString(0, content);
		
		Tag result = new Tag();
		result = (Tag) query.list().get(0);
		
		
		session.getTransaction().commit();
		session.close();
		
		return result;
	}

}
