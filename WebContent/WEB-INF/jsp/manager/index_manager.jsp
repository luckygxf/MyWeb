<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<title>管理员首页</title>
</head>
	<frameset rows="17%, 83%">
		<frame src="manager/getTopInfoAction" name="topFrame" noresize="noresize" scrolling="no"
		/>
		<frameset cols="15%, 85%">
			<frame src="manager/getMenuAction" name="meneFrame"  noresize="noresize" scrolling="no"/>
			<frame src="manager/getMainAction" name="mainFrame"  noresize="noresize" scrolling="no"/>
		</frameset>
	</frameset>
</html>