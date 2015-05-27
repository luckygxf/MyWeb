<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	.photo{
		min-height:300px;
		padding:10px 30px;
		margin:10px;
	    background:#e1e0cc;
	}
	
	.photo .div_ph{
		padding:5px;
	}	
	.photo .span_to{
		color:#888;
	}
	
	.photo_bg { 
	    width: 180px; 
	    height: 150px;
	    left: 4px;
	    top: 4px;
	    border:1px solid #ccc;
	    background:#fff;
	}	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>相册展示</title>
</head>
<body>
	<div class="photo">
	<div class="div_ph">
		<p>
			<a href="#">返回所有相册>></a>
			<s:property value="photoAlbum.name"/>
		</p>
		<p>
			<span class="span_to">张相片 | 创建于</span>
		</p>
	</div>
	</div>
	
</body>
</html>