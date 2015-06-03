<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String basePath = request.getContextPath();
	System.out.println(session.getAttribute("accountName") + "in jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台登陆</title>
<style type="text/css">
	body{		
		background:url(/MyWeb/image/loginBg.jpg) no-repeat;
		background-position: center;
		background-repeat: no-repeat;
		background-attachment: fixed;
		margin:5px auto; 
		width:700px;
		text-align: center;
	}
	#loginText{
		text-align: center;
		z-index: 1;
		margin:auto;
		margin-top: 300px;
	}
	.txt_1{
		color: #ceffff;
		padding-left: 60px;
		font-size: 12px;
	}
	.input_2{
		height: 36px;
		border: none;		
		margin-top: 20px;
	}
</style>
<script type="text/javascript">
	function checkAndSubmit(){
		var loginId = document.getElementById("loginId");
		var password = document.getElementById("password");
		if(loginId == "")
		{
			alert("用户名不能为空!");
			return false;
		}
		if(password == ""){
			alert("密码不能为空!");
			return false;
		}
		managerInfoForm.submit();		
	}
	function validAccount(){
		var isValid = "<%=session.getAttribute("isValid") %>";
		var accountName = "<%=session.getAttribute("accountName") %>"
		alert(accountName);
		if(accountName != "null"){
			managerInfoForm.submit();
		}
		
		if(!isValid && isValid != ""){
			alert("用户名和密码不正确!");
			return false;
		}
	}
	
</script>
</head>
<body onload="validAccount()">
	<div id="loginText">
		<form action="<%=basePath %>/manager/loginAction" name="managerInfoForm" method="post">
			<table>
				<tr>
					<td class="txt_1">
						用户名：
					</td>
					<td>
						<input class="input_1" type="text" name="account.loginId" id="loginId"/>
					</td>
				</tr>
				<tr>
					<td class="txt_1">
						登陆密码：
					</td>
					<td>
						<input class="input_1" type="password" name="account.password" id="password"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="登陆系统" class="input_2" onclick="checkAndSubmit()"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>