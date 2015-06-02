<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客列表</title>
<style type="text/css">
	.head{
		font-size: 105%;
		background: #E5EEF7;
		border-top: 1px solid #AAAAAA;
		border-bottom: 1px dashed #AAAAAA;
		font-weight: bold;
		color: #333333;
		width: auto;
		padding: 2px 12px;
		margin: 12px 0px 5px 0px;
		clear: left;
	}
	.subCollapsibleTitle {
		font-size: 100%;
		background: #E5EEF7;
		border-top: 1px solid #BBB;
		border-bottom: 1px dashed #BBB;
		font-weight: bold;
		color: #333333;
		width: auto;
		padding: 3px 12px;
		margin: 12px 0px 5px 0px;
		clear: left;
	}
	.post_block {
		margin: 15px 10px 25px 15px;
	}
	input.Button {
		float: left;
		/* padding: 3px 8px; */
		background: #6B86B3;
		border: 1px solid #333333;
		text-transform: uppercase;
		margin-right: 15px;
		color: #FFFFFF;
		font-size: 12px;
		font-weight: bold;
		width: 70px;
		text-align: center;
		cursor: pointer;
		/* cursor: hand; */
		height: 26px;
		line-height: 22px;
	}
	.Edit{
		color: #333333;
	    /*border-bottom: 1px solid #AAAAAA;*/
	    margin-bottom: 8px;
	    padding: 4px 12px;
	    background: #F5F5F5;
	}
	.block{
		margin-top: 8px;
    	display: block;
	}
	table.Listing {
		border-bottom: 3px solid #6B86B3;
		margin: 0px 0px 8px 0px;
		width: 100%;
	}
	table.Listing tr {
		color: inherit;
		background: #F5F5F5;
		padding: 4px 12px;
	}
	.Header {
	    font-weight: bold;
	    color: inherit;
	    border-bottom: 1px solid #6B86B3;
	    background: #FFFFFF;
	}
	a:link { text-decoration: none;color: blue} 
	a:active { text-decoration:blink} 
　　a:hover { text-decoration:underline;color: red} 
　　a:visited { text-decoration: none;color: green} 
</style>
</head>
<body>
	<div class="head">
		<span>博客列表</span>
	</div>
	<div>
		<table class="Listing">
			<tr class="Header" style="text-align: center;">
				<th>标题</th>
				<th>评论</th>
				<th>阅读</th>
				<th>操作</th>
				<th>操作</th>
			</tr>
			<s:iterator value="listOfBlog" id="blogIndex">
				<tr style="text-align: center;">
					<td style="text-align: left;"><a href="blog/queryBlogDetailActionForManager?blog.id=
					<s:property value="#blogIndex.id"/>"><s:property value="#blogIndex.title"/>(<s:property value="#blogIndex.publishTime"/>)</a></td>
					<td><s:property value="#blogIndex.comments.size()"/></td>
					<td><s:property value="#blogIndex.readCount"/></td>
					<td><a href="blog/beforeUpdateBlogAction?blog.id=<s:property value="#blogIndex.id"/>">编辑</a></td>
					<td><a href="blog/deleteBlogAction?blog.id=<s:property value="#blogIndex.id"/>">删除</a></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	<div>
	<div>
			<a href="blog/blogAction?pager.nowPage=0">首页</a>
			<a href="blog/blogAction?pager.nowPage=<s:property value="%{pager.nowPage-1}"/>">上一页</a>
			<a href="blog/blogAction?pager.nowPage=<s:property value="%{pager.nowPage+1}"/>">下一页</a>
			<a href="blog/blogAction?pager.nowPage=<s:property value="%{pager.pageCount - 1}"/>">尾页</a>
			  共有<s:property value="pager.pageCount"/>页
	</div>
	</div>
</body>
</html>