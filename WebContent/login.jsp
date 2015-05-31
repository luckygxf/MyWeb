<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		managerInfoForm.submit();
		
	}
</script>
</head>
<body>
	<div id="loginText">
		<form action="manager/loginAction" name="managerInfoForm">
			<table>
				<tr>
					<td class="txt_1">
						用户名：
					</td>
					<td>
						<input class="input_1" type="text" name="account.loginId"/>
					</td>
				</tr>
				<tr>
					<td class="txt_1">
						登陆密码：
					</td>
					<td>
						<input class="input_1" type="password" name="account.password"/>
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