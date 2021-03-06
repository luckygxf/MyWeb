package com.gxf.action;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javassist.bytecode.Descriptor.Iterator;

import org.apache.struts2.interceptor.SessionAware;

import com.gxf.beans.Blog;
import com.gxf.beans.BlogType;
import com.gxf.beans.Comment;
import com.gxf.beans.Tag;
import com.gxf.dao.BlogDao;
import com.gxf.dao.BlogTypeDao;
import com.gxf.dao.CommentDao;
import com.gxf.dao.TagDao;
import com.gxf.dao.impl.BlogDaoImp;
import com.gxf.dao.impl.BlogTypeDaoImp;
import com.gxf.dao.impl.CommentDaoImp;
import com.gxf.dao.impl.TagDaoImp;
import com.gxf.util.Pager;
import com.gxf.util.SecurityCode;
import com.gxf.util.SecurityImage;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport implements  SessionAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//数据库访问类
	private BlogDao blogDao = new BlogDaoImp();
	private TagDao tagDao = new TagDaoImp();
	private CommentDao commentDao = new CommentDaoImp();
	private BlogTypeDao blogTypeDao = new BlogTypeDaoImp();
	
	private List<Blog> listOfBlog;
	private Pager pager;
	private Blog blog;
	private List<Tag> tags = new ArrayList<Tag>();	
	private String selectedTagContent;
	private Comment comment;
	
	private ByteArrayInputStream imageStream;
	//客户端提交的校验码
	private String securityCode;
	private Map<String, Object> session;	
	private String verifyCodeIsValide;
	private BlogType blogType;
	private List<BlogType> listOfBlogType;
	private String tagStr;

	/**
	 * 获取所有的博客
	 * @return
	 */
	public String queryBlogs(){
//		if(pager == null)
//			pager = new Pager();
//		
//		if(listOfBlog == null)
//			listOfBlog = blogDao.queryBlog(pager);	
		listOfBlog = blogDao.queryAllBlog();
		return SUCCESS;
	}
	
	/**
	 * 查询博客内容
	 * @return
	 */
	public String queryBlogDetail(){
		int blogId = blog.getId();
		blog = blogDao.queryBlogById(blogId);

		//处理标签	
		tags.addAll(blog.getTags());
						
		return SUCCESS;
	}
	
	/**
	 * 通过tag获取博客
	 * @return
	 */
	public String queryBlogByTag(){
		try {
			selectedTagContent = new String(selectedTagContent.getBytes("ISO8859_1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Tag selectedTag = tagDao.queryTagByContent(selectedTagContent);
		//这里需要进行分页处理
		listOfBlog = new ArrayList<Blog>(selectedTag.getBlogs());
		//分页处理
		int blogCount = listOfBlog.size();
		if(pager == null) 
		{
			pager = new Pager();
		}
		
		//设置有多少页
		int pageSize = pager.getPageSize();
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
		
		listOfBlog = listOfBlog.subList(startIndex, pageSize);
		
		
		return SUCCESS;
		
	}
	
	/**
	 * 生成校验码
	 * @return
	 */
	public String createSecurityCodeImageAction(){
		//获取默认难度和长度的验证码
		securityCode = SecurityCode.getSecurityCode();

		imageStream = SecurityImage.getImageAsInputStream(securityCode);
		
		session.put("securityCode", securityCode);
		
		return SUCCESS;
	}
	
	/**
	 * 为博客添加
	 * @return
	 */
	public String addComment(){
		//查询评论的博客
		Blog blogToComment = blogDao.queryBlogById(blog.getId());
		//传回给页面
		blog = blogToComment;
		//验证校验码
		String serverVerifyCode = (String) session.get("securityCode");
		
		if(!serverVerifyCode.equals(this.securityCode)){
			verifyCodeIsValide="NOTVALID";
			return SUCCESS;
		}
		else
			verifyCodeIsValide="VALID";
		//向数据库中写入评论
		comment.setBlog(blogToComment);

		commentDao.addComment(comment);

		return SUCCESS;
	}
	
	/**
	 * 添加博客之前
	 * @return
	 */
	public String beforeAddBlog(){
		//查询所有的博客分类
		listOfBlogType = blogTypeDao.queryAllBlogType();
		
		return SUCCESS;
	}
	
	/**
	 * 添加博客
	 * @return
	 */
	public String addBlog(){
		//获取用户
		String username = (String) session.get("accountName");
		blog.setAuthor(username);
		//添加博客到数据库
		blogDao.addBlog(blog);
		
		//处理标签，如果数据库中没有的标签添加到数据库中
		String namesOfTag[] = tagStr.split(",");
		
		//博客中的标签
		for(int i = 0; i < namesOfTag.length; i++){
			Tag temp = null;
			if((temp = tagDao.queryTagByContent(namesOfTag[i])) == null)
			{
				temp = new Tag();
				temp.setContent(namesOfTag[i]);
			}
			blog.getTags().add(temp);
		}
		blogDao.updateBlog(blog);

		//查询所有的博客分类
		listOfBlogType = blogTypeDao.queryAllBlogType();
		return SUCCESS;
	}
	
	/**
	 * 添加博客类型之前
	 * @return
	 */
	public String beforeAddBlogType(){
		//查询已有的博客类型
		listOfBlogType = blogTypeDao.queryAllBlogType();
		return SUCCESS;
	}
	
	/**
	 * 添加博客类型
	 * @return
	 */
	public String addBlogType(){
		//查询已有的博客类型
		listOfBlogType = blogTypeDao.queryAllBlogType();
		//向数据库中添加博客类型
		blogTypeDao.addBlogType(blogType);
		//查询已有的博客类型
		listOfBlogType = blogTypeDao.queryAllBlogType();
		return SUCCESS;
	}
	
	/**
	 * 在更新博客类型之前
	 * @return
	 */
	public String beforeUpdateBlogType(){
		//根据博客类型ID查询博客类型
		blogType = blogTypeDao.queryBlogById(blogType.getId());
		
		return SUCCESS;
	}
	
	/**
	 * 更新博客类型
	 * @return
	 */
	public String updateBlogType(){
		//更新博客类型
		blogTypeDao.updateBlogType(blogType);
		return SUCCESS;
	}
	
	/**
	 * 删除博客类型
	 * @return
	 */
	public String deleteBlogType(){
		//删除博客类型
		blogTypeDao.deleteBlogTypeById(blogType.getId());
		//查询已有的博客类型
		listOfBlogType = blogTypeDao.queryAllBlogType();
		return SUCCESS;
	}
	
	/**
	 * 更新博客之前初始化
	 * @return
	 */
	public String beforeUpdateBlog(){
		//查询博客信息
		int blogId = blog.getId();
		blog = blogDao.queryBlogById(blogId);
		
		//查询所有的博客分类
		listOfBlogType = blogTypeDao.queryAllBlogType();
		
		return SUCCESS;
	}
	
	/**
	 * 更新博客
	 * @return
	 */
	public String updateBlog(){
		//先删除在添加
		blogDao.deleteBlogById(blog.getId());
		//获取用户
		String username = (String) session.get("accountName");
		blog.setAuthor(username);
		//添加博客到数据库
		blogDao.addBlog(blog);
		
		//处理标签，如果数据库中没有的标签添加到数据库中
		String namesOfTag[] = tagStr.split(",");
		
		//博客中的标签
		for(int i = 0; i < namesOfTag.length; i++){
			Tag temp = null;
			if((temp = tagDao.queryTagByContent(namesOfTag[i])) == null)
			{
				temp = new Tag();
				temp.setContent(namesOfTag[i]);
			}
			blog.getTags().add(temp);
		}
		blogDao.updateBlog(blog);

		//查询所有的博客分类
		listOfBlogType = blogTypeDao.queryAllBlogType();
		return SUCCESS;
	}
	
	/**
	 * 删除博客
	 * @return
	 */
	public String deleteBlog(){
		//删除博客
		blogDao.deleteBlogById(blog.getId());
		//查询所有的博客
		listOfBlog = blogDao.queryAllBlog();
		return SUCCESS;
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

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getVerifyCodeIsValide() {
		return verifyCodeIsValide;
	}

	public void setVerifyCodeIsValide(String verifyCodeIsValide) {
		this.verifyCodeIsValide = verifyCodeIsValide;
	}

	public BlogType getBlogType() {
		return blogType;
	}

	public void setBlogType(BlogType blogType) {
		this.blogType = blogType;
	}

	public List<BlogType> getListOfBlogType() {
		return listOfBlogType;
	}

	public void setListOfBlogType(List<BlogType> listOfBlogType) {
		this.listOfBlogType = listOfBlogType;
	}

	public String getTagStr() {
		return tagStr;
	}

	public void setTagStr(String tagStr) {
		this.tagStr = tagStr;
	}	
	
	
}
