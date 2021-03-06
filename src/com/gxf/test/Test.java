package com.gxf.test;

import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.gxf.beans.Account;
import com.gxf.beans.Blog;
import com.gxf.beans.Photo;
import com.gxf.beans.PhotoAlbum;
import com.gxf.beans.Tag;
import com.gxf.dao.AccountDao;
import com.gxf.dao.BlogDao;
import com.gxf.dao.PhotoAlbumDao;
import com.gxf.dao.PhotoDao;
import com.gxf.dao.TagDao;
import com.gxf.dao.impl.AccountDaoImp;
import com.gxf.dao.impl.BlogDaoImp;
import com.gxf.dao.impl.PhotoAlbumDaoImp;
import com.gxf.dao.impl.PhotoDaoImp;
import com.gxf.dao.impl.TagDaoImp;

public class Test {

	public static void main(String[] args) {
		Set<Tag> setOfTag = new HashSet<Tag>();
		Tag tag = new Tag();
		tag.setContent("c");
		Tag tag2 = new Tag();
		tag2.setContent("c");
		
		setOfTag.add(tag);
		System.out.println(setOfTag.contains(tag2));
	}

}
