<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的博客</title>
<!-- css -->
<link rel="stylesheet" type="text/css" href="/MyWeb/css/blogdetail.css">
</head>
<body>
	<div id="sidebar">
			<h1>日期</h1>
			<div id="calendar">
			
			</div>
			<h1>分类</h1>
			<div id="blogType">
			
			</div>
			<h1>标签</h1>
			<div id="tags">
			</div>
		</div>
	<div class="content">
		<div class="article">			
			<p class="top">
				<img alt="作者" src="/MyWeb/image/author.png"> <s:property value="blog.author"/> | 发表于 <s:property value="blog.publishTime"/>
			</p>
			<h2><s:property value="blog.title"/></h2>
			<div class="cont">
				<s:property value="blog.content"/>
			</div>
			<p>标签: 
				<s:iterator value="tags" id="val">
					<a href="blog/queryBlogByTag?selectedTagContent=<s:property value="#val.content"/>"><s:property value="#val.content"/></a>
				</s:iterator>
			</p>
		</div>
		<h1>发表评论</h1>
		<div class="postComment">
			<form action="#">
				<table>
				
				</table>
			</form>
		</div>
	</div>
</body>
</html>