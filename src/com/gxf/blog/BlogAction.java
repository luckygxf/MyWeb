package com.gxf.blog;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.gxf.beans.Blog;
import com.gxf.beans.Comment;
import com.gxf.beans.Tag;
import com.gxf.dao.BlogDao;
import com.gxf.dao.TagDao;
import com.gxf.dao.impl.BlogDaoImp;
import com.gxf.dao.impl.TagDaoImp;
import com.gxf.util.Pager;
import com.gxf.util.SecurityCode;
import com.gxf.util.SecurityImage;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//���ݿ������
	private BlogDao blogDao = new BlogDaoImp();
	private TagDao tagDao = new TagDaoImp();
	
	private List<Blog> listOfBlog;
	private Pager pager;
	private Blog blog;
	private List<Tag> tags = new ArrayList<Tag>();	
	private String selectedTagContent;
	private Comment comment;
	
	private ByteArrayInputStream imageStream;
	


	

	/**
	 * ��ȡ���еĲ���
	 * @return
	 */
	public String queryBlogs(){
		if(pager == null)
			pager = new Pager();
		
		if(listOfBlog == null)
			listOfBlog = blogDao.queryBlog(pager);	
		
		return SUCCESS;
	}
	
	/**
	 * ��ѯ��������
	 * @return
	 */
	public String queryBlogDetail(){
		int blogId = blog.getId();
		blog = blogDao.queryBlogById(blogId);
		
		//�����ǩ	
		tags.addAll(blog.getTags());
		
				
		return SUCCESS;
	}
	
	/**
	 * ͨ��tag��ȡ����
	 * @return
	 */
	public String queryBlogByTag(){
		try {
			selectedTagContent = new String(selectedTagContent.getBytes("ISO8859_1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Tag selectedTag = tagDao.queryTagByContent(selectedTagContent);
		//������Ҫ���з�ҳ����
		listOfBlog = new ArrayList<Blog>(selectedTag.getBlogs());
		//��ҳ����
		int blogCount = listOfBlog.size();
		if(pager == null) 
		{
			pager = new Pager();
		}
		
		//�����ж���ҳ
		int pageSize = pager.getPageSize();
		if(blogCount % pageSize != 0)
			pager.setPageCount(blogCount / pageSize + 1);
		else
			pager.setPageCount(blogCount / pageSize);
		
		//����ӵڼ�����¼��ʼ
		int startIndex = pager.getNowPage()  * pager.getPageSize();
		if(startIndex >= blogCount)
			pager.setNowPage(pager.getPageCount() - 1);
		startIndex = pager.getNowPage()  * pager.getPageSize();
		
		//���һҳ����û��pageSize
		if(blogCount < (startIndex + pageSize))
			pageSize = blogCount - startIndex;
		
		listOfBlog = listOfBlog.subList(startIndex, pageSize);
		
		
		return SUCCESS;
		
	}
	
	/**
	 * ����У����
	 * @return
	 */
	public String createSecurityCodeImageAction(){
		//��ȡĬ���ѶȺͳ��ȵ���֤��
		String securityCode = SecurityCode.getSecurityCode();
		imageStream = SecurityImage.getImageAsInputStream(securityCode);
		
		return SUCCESS;
	}
	
	/**
	 * �Բ��ͽ��з�ҳ
	 */
	public void getBlogByPage(){
		
	}

	public List<Blog> getListOfBlog() {
		return listOfBlog;
	}

	public void setListOfBlog(List<Blog> listOfBlog) {
		this.listOfBlog = listOfBlog;
	}

	public Pager getPager() {
		return pager;
	}
	
	public String getSelectedTagContent() {
		return selectedTagContent;
	}

	public void setSelectedTagContent(String selectedTagContent) {
		this.selectedTagContent = selectedTagContent;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}
	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	
	public List<Tag> getTags() {
		return tags;
	}

	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public ByteArrayInputStream getImageStream() {
		return imageStream;
	}

	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}
}
