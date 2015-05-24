package com.gxf.test;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.gxf.beans.Blog;
import com.gxf.beans.Tag;
import com.gxf.dao.BlogDao;
import com.gxf.dao.TagDao;
import com.gxf.dao.impl.BlogDaoImp;
import com.gxf.dao.impl.TagDaoImp;

public class Test {

	public static void main(String[] args) {
//		BlogDao blogDao = new BlogDaoImp();
//		TagDao tagDao = new TagDaoImp();
//		
//		//添加tag
////		for(int i = 0; i < 3; i++){
////			Tag tag = new Tag("标签" + i);
////			tagDao.addTag(tag);
////		}
//		
//		List<Tag> listOfTag = tagDao.queryAllTags();
//		Set<Tag> tags = new HashSet<Tag>(listOfTag);
//		
//		for(int i = 0; i < 59; i++){
//			Blog blog = new Blog();
//			String title = "博客标题" + i;
//			String content = "博客内容" + i;
//			String author = "作者" + i;
//			String type = "种类";
//			blog.setTitle(title);
//			blog.setAuthor(author);
//			blog.setContent(content);
//			blog.setTags(tags);
//			blog.setType(type);
//			blogDao.addBlog(blog);
//		}
	}

}
