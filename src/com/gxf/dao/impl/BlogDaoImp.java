package com.gxf.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.gxf.beans.Blog;
import com.gxf.dao.BlogDao;
import com.gxf.util.Pager;

public class BlogDaoImp implements BlogDao {
	
	private BaseDao baseDao = new BaseDao();

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogDao#addBlog(com.gxf.beans.Blog)
	 */
	@Override
	public void addBlog(Blog blog) {
		Session session = baseDao.getSession();
		//开启事务 
		session.beginTransaction();
		
		//保存博客
		session.save(blog);
		
		//提交事务和关闭session
		session.getTransaction().commit();
		session.close();
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogDao#queryAllBlog()
	 */
	@Override
	public List<Blog> queryAllBlog() {
		List<Blog> listOfBlog = new ArrayList<Blog>();
		Session session = baseDao.getSession();
		session.beginTransaction();
		
		String hql = "select * from blog limit 7";
		SQLQuery query = session.createSQLQuery(hql);
		query.addEntity(Blog.class);
		listOfBlog = query.list();
		
		session.getTransaction().commit();
		session.close();
		
		return listOfBlog;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogDao#queryBlog(com.gxf.util.Pager)
	 */
	@Override
	public List<Blog> queryBlog(Pager pager) {
		
		//设置有多少页		
		int pageSize = pager.getPageSize();
		int blogCount = queryBlogCount();
		if(blogCount % pageSize != 0)
			pager.setPageCount(blogCount / pageSize + 1);
		else
			pager.setPageCount(blogCount / pageSize);
		
		//计算从第几条记录开始
		int startIndex = pager.getNowPage()  * pager.getPageSize();
		if(startIndex >= blogCount)
			pager.setNowPage(pager.getPageCount() - 1);
		startIndex = pager.getNowPage()  * pager.getPageSize();
		
		//最后一页内容没有pageSize
		if(blogCount < (startIndex + pageSize))
			pageSize = blogCount - startIndex;
		
				
		//开始查询
		Session session = baseDao.getSession();
		session.beginTransaction();
		String sql = "select * from blog limit ?, ?";
		SQLQuery query = session.createSQLQuery(sql);
		query.setInteger(0, startIndex);
		query.setInteger(1, pageSize);
		query.addEntity(Blog.class);
		
		List<Blog> listOfBlog = query.list();
		
		//commit close
		session.getTransaction().commit();
		session.close();
		
		//return
		return listOfBlog;
	}
	
	/**
	 * 查询blog总数
	 * @return
	 */
	public int queryBlogCount(){
		int sum = 0;
		//开始查询
		Session session = baseDao.getSession();
		
		//开启事务
		session.beginTransaction();
		String sql = "SELECT count(*) from Blog";
		Query query = session.createQuery(sql);

		
		sum = Integer.valueOf(query.list().iterator().next().toString());
		
		//提交事务和关闭session
		session.getTransaction().commit();
		session.close();
	
		//返回查询结果
		return sum;
	}

}
