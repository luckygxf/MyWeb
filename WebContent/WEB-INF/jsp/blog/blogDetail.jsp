<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>我的博客</title>
<!-- css -->
<style type="text/css">
	.content{
		width: 740px;
		float: right;
		margin-right: 10px;
		margin-top: 10px;
	}
	.article{
		
	}
	.comment{
	
	}
	#sidebar{
		width:200px;
		float:left;
		margin-left:10px;
		margin-top:10px;
		min-height:300px;
		border-right:1px solid;
	
	}
	h1{
		 height:40px;
		 line-height:40px;
		 font-size:14px; 
		 text-indent:10px;
		 color:#eee;
	}
	li{
		list-style: none;
	}
	
	.article  p.top{
	  height:30px;
	  line-height:30px;
	  border-bottom:1px dashed #999;
	  color:#999;
	}
	.article  h2{
	  font-size:14px;
	  color:#333;
	  height:30px;
	  line-height:30px;
	}
	
	.article .cont{
	 padding-left:0px;
	 letter-spacing:1px;
	 text-indent:20px;
	 line-height:23px;
	 min-height:200px;
	 font-size:14px; 
	 word-break: break-all;word-wrap: break-word;
}
</style>
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
					<a href="#"><s:property value="#val"/></a>
				</s:iterator>
			</p>
		</div>
		<div class="comment">
			评论
		</div>
	</div>
</body>
</html>