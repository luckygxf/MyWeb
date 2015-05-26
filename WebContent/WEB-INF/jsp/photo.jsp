<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的相册</title>
</head>
<body>
	<h1>我的相册</h1>
	<s:iterator value="listOfPhotoName" id="photoName"> 
		<s:property value="photoName"/>
	</s:iterator>
</body>
</html>