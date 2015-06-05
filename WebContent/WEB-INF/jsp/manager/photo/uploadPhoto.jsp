<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传图片</title>
<link href="/MyWeb/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function uploadSubmit(photoAlbumId){
		var uploadFile = document.getElementById("upload").value;
		//alert(uploadFile);
		if(!uploadFile || uploadFile==""){
			alert("请选择要上传的相片!");
			return false;
		}
		form1.submit();
	}
</script>
</head>
<body style="margin-left: 20px; margin-top: 20px;">
	<div>
		<a href="#"><s:property value="photoAlbum.name"/></a>>>上传相片>><br><br>
	</div>
	<form action="photo/uploadPhotoAction?photoAlbum.id=<s:property value="photoAlbum.id"/>" name="form1" method="post" enctype="multipart/form-data">
		<input type="file" class="btn btn-primary" name="upload" id="upload" accept="image/*"/><br>
		相片说明<br>
		<input type="text" name="uploadPhoto.comment"/><br><br><br>
		<input type="button" value="上传相片" class="btn btn-primary" onclick="uploadSubmit()"/>
	</form>
</body>
</html>