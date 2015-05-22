package com.gxf.test;

import com.gxf.beans.Blog;
import com.gxf.dao.BlogDao;
import com.gxf.dao.impl.BlogDaoImp;

public class Test {

	public static void main(String[] args) {
		BlogDao blogDao = new BlogDaoImp();
		
		for(int i = 0; i < 100; i++){
			Blog blog = new Blog();
			String title = "博客标题" + i;
			String content = "博客内容" + i;
			String author = "作者" + i;
			String tags = "标签" + i;
			
			blog.setTitle(title);
			blog.setAuthor(author);
			blog.setContent(content);
			blog.setTags(tags);
			blogDao.addBlog(blog);
		}
	}

}
