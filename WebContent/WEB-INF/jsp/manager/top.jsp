<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
	String basePath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上部分</title>
<style type="text/css">
	body{

	}
	.logo{
		float: right;
	}
	.accountInfo{
		font-size: 32px;
	}
</style>
</head>
<body>
	<div >
		<img alt="topLogo" src="<%= basePath%>/image/top_right.png" height="140px"  style="float: right;">
		
		<img alt="topLogo" src="<%= basePath%>/image/top_center.jpg" height="125px"  style="float: none; margin-left: 200px;">
		<span class="accountInfo"><s:property value="session.accountName"/></span>
		<img alt="topLogo" src="<%= basePath%>/image/top_left.png" height="140px" style="float: left;">
	</div>
</body>
</html>