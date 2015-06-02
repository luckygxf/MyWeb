<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的博客</title>


</head>
<body>
	<div>
		<div>			
			<p class="top">
				<img alt="作者" src="/MyWeb/image/author.png"> <s:property value="blog.author"/> | 发表于 <s:property value="blog.publishTime"/>
			</p>
			<h2><s:property value="blog.title"/></h2>
			<div class="cont">
				<s:property value="blog.content"/>
			</div>
			<p>
				分类：<br>
				<s:property value="blog.blogType.name"/>
			</p>
			<p>标签: 
				<s:iterator value="tags" id="val">
					<a href="#"><s:property value="#val.content"/></a>
				</s:iterator>
			</p>
		</div>
		<div class="commets">
			<s:iterator value="blog.comments" id="comment">
					<div class="ds-post-main"><img alt="评论" src="/MyWeb/image/commentLogo.png"><s:property value="#comment.personName"/> | 发表于 <s:property value="#comment.publishTime"/></div>
					<div class="ds-comment-body">
						<s:property value="#comment.content"/>
					</div>
			</s:iterator>
		</div>
	</div>
</body>
</html>