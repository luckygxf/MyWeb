package com.gxf.test;

import com.gxf.beans.Blog;
import com.gxf.dao.BlogDao;
import com.gxf.dao.impl.BlogDaoImp;

public class Test {

	public static void main(String[] args) {
		BlogDao blogDao = new BlogDaoImp();
		
		for(int i = 0; i < 59; i++){
			Blog blog = new Blog();
			String title = "���ͱ���" + i;
			String content = "��������" + i;
			String author = "����" + i;
			String tags = "��ǩ" + i;
			String type = "����";
			System.out.println("in test");
			blog.setTitle(title);
			blog.setAuthor(author);
			blog.setContent(content);
			blog.setTags(tags);
			blog.setType(type);
//			blogDao.addBlog(blog);
		}
	}

}
