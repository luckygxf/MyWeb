<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String basePath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建相册</title>
<link href="/MyWeb/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function checkAndSubmit(){
		var testName = document.getElementById("photoAlbumName").value;
		if(!testName){
			alert("请填写好相册名称!");
			return false;
		}
		
		//提交表单
		form1.submit();
		alert("创建相册成功!");
	}
</script>
</head>
<body style="margin-left: 20px; margin-top: 20px;">
	<div>
		添加相册>><br><br>
	</div>
	<form action="<%=basePath %>/photo/createPhotoAlbumAction" name="form1" method="post">
		相册名称<br>
		<input type="text" name="photoAlbum.name" id="photoAlbumName"/><br><br>
		相册说明<br>
		<input type="text" name="photoAlbum.comment" id="comment"/><br><br>
		<input type="button" value="创建相册" onclick="checkAndSubmit()" class="btn btn-primary"/>
	</form>
</body>
</html>