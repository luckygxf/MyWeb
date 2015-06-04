<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示客户端信息</title>
</head>
<body>
	浏览器名称<br>
	<s:property value="clientInfo.browserName"/> <br>
	操作系统<br>
	<s:property value="clientInfo.osName"/>
</body>
</html>