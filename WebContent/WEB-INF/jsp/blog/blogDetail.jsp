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
<script type="text/javascript">
	window.onload=validVerifyCode;
	//验证验证码是否正确
	function validVerifyCode(){
	    var isValid = document.getElementById('securityCodeIsValid').value;
	    //alert(isValid);
	    //alert(securityCodeIsValid=="NOTVALID");
		if(isValid=="VALID")
			alert("评论发表成功");
		if(isValid=="NOTVALID")
			alert("验证码不正确!");
	}
	//刷新验证码
	function getVerifyCodeImage(){	 
        document.getElementById("verifyCodeImage").src="blog/createCodeImage?timeStamp=" + new Date();
   }
	//检查表单信息是否完整
	function check(){
		
		if(commentForm.personName.value==""){
			alert("请留下你的名字哦!");
			return false;
		}
		else if(commentForm.personEmail.value==""){
			alert("请留下你的邮箱哦!");
			return false;
		}
		else if(commentForm.personContent.value==""){
			alert("请填写评论内容");
			return false;
		}
		else
		{
			var str = commentForm.personEmail.value;
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
			if(!reg.test(str)){
				alert("邮箱格式不正确!");
				return false;
			}
			commentForm.submit();
		}		
	}
</script>
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
		<div class="commets">
			<s:iterator value="blog.comments" id="comment">
					<div class="ds-post-main"><img alt="评论" src="/MyWeb/image/commentLogo.png"><s:property value="#comment.personName"/> | 发表于 <s:property value="#comment.publishTime"/></div>
					<div class="ds-comment-body">
						<s:property value="#comment.content"/>
					</div>
			</s:iterator>
		</div>
		<h1>发表评论</h1>
		<div class="postComment">			
			<form  name="commentForm" action="blog/addComment">
				<input type="hidden" name="blog.id" value="<s:property value="blog.id"/>"/>
				<table>
					<tr>
						<td>博客：</td>
						<td><s:property value="blog.title"/></td>
					</tr>
					<tr>
						<td>留言人：</td>
						<td>
							<input name="comment.personName" id="personName"/>
							<span class="starSymbol">*</span>
						</td>
					</tr>
					<tr>
						<td>电子邮箱：</td>
						<td>
							<input name="comment.personEmail" id="personEmail"/>
							<span class="starSymbol">*</span>
						</td>
					</tr>
					<tr>
						<td>评论内容：</td>
						<td>
							<textarea name="comment.content" id="personContent"></textarea>
							<span class="starSymbol">*</span>
						</td>
					</tr>
					<tr>
						<td>验证码：</td>
						<td>
							<input type="hidden" id="securityCodeIsValid"  value="<s:property value="verifyCodeIsValide"/>"/>
							<input name="securityCode" id="verifyCodeClient" type="text" maxlength="4"/>
							<img id="verifyCodeImage" alt="看不清，换一张" src="blog/createCodeImage?verifyCodeIsValide=<s:property value="verifyCodeIsValide"/>" 
											style="vertical-align: middle;
							 argin-bottom: 3px; cursor: pointer" onclick="getVerifyCodeImage()">
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="button" onclick="check()" value="提交"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>