<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>会员注册</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function checkForm() {
		//校验用户名不能为空
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		var rePassword = document.getElementById("rePassword").value;
		if (username == null || username == '') {
			alert("用户名不能为空");
			return false;
		}
		if (password == null || password == '') {
			alert("密码不能为空");
			return false;
		}
		if (rePassword == null || username == '' || rePassword != Password) {
			alert("确认密码不能为空，或者两次密码不一样");
			return false;
		}
		return true;
	}
	function checkUsername() {
		var username = document.getElementById("username").value;
		var xmlHttp = creatXMLHttpreauest();
		xmlHttp.open("GET",
				"${pageContext.request.contextPath}/registFindByid.action?username="
						+ username, true);
		xmlHttp.send(null);
		xmlHttp.onreadystatechange = function() {
			if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
				document.getElementById("span1").innerHTML = xmlHttp.responseText;
			}
		}
	}
		
	//邮箱验证
	function checkEmail(email){
		var EmailReg =/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		if(email != "" && email.search(EmailReg)!=-1){
			document.getElementById("test_email").innerHTML = "<font color='green' size='3px'>邮箱格式正确</font>";
		}else{
			document.getElementById("test_email").innerHTML = "<font color='red' size='3px'>邮箱格式错误</font>";
		}
	}
	//电话号码验证
	function checkPhone(phone){
		var phoneReg = /^(\(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}$/;
		if(phone != "" && phone.search(phoneReg)!=-1){
			document.getElementById("test_phone").innerHTML = "<font color='green' size='3px'>手机号码正确</font>";
		}else{
			document.getElementById("test_phone").innerHTML = "<font color='red' size='3px'>手机号码错误</font>";
		}	
	}

	function creatXMLHttpreauest() {
		try {
			return new XMLHttpRequest();
		} catch (e) {
			try {
				return ActiveXObject("Msxml2.XMLHttp");
			} catch (e) {
				try {
					return ActiveXObject("micoresoftxml2.XMLHttp");
				} catch (e) {
					throw e;
				}
			}
		}
	}
	function change(){
		var img = document.getElementById("checkImg");
		img.src="${pageContext.request.contextPath}/checkImg.action?"+new Date();
	}
	
</script>
</head>
<body>
	<div class="container header">
		<div class="span5">
			<div class="logo">
				<a href="http://localhost:8080/shop/"> <img
					src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.jpg"
					alt=""></a>
			</div>
		</div>
		<div class="span9">
			<div class="headerAd">
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/15.gif"
					width="320" height="50" >
			</div>
		</div>
		<%@ include file="menu.jsp"%>

	</div>
	<div class="container register">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix">
					<div class="title">
						<strong>会员注册</strong>USER REGISTER
					</div>
					<%-- <c:if test="${errors!=null}">
						<c:forEach items="${errors}" var="error">
							${error}
						</c:forEach>
					</c:if>--%>
					<form id="registerForm" method="post" action="${pageContext.request.contextPath}/userRegist.action">
						<table>
							<tbody>
								<tr>
									<th><span class="requiredField">*</span>用户名:</th>
									<td><input type="text" id="username" name="username" class="text" maxlength="20" placeholder = "请输入用户名" onblur="checkUsername()">
											<span id="span1" style="color:green;"></span></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>密&nbsp;&nbsp;码:</th>
									<td><input type="password" id="password" name="password"
										class="text" maxlength="20" placeholder = "请输入密码" autocomplete="off" onblur = "checkPassword()"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>确认密码:</th>
									<td><input type="password" id="rePassword"
										name="rePassword" class="text" maxlength="20" placeholder = "请再次输入密码" autocomplete="off"></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>E-mail:</th>
									<td><input type="text" id="email" name="email" class="text" maxlength="200" placeholder="请使用正确的邮箱" onblur = "checkEmail(this.value)">
										<span style="color:red;"><s:fielderror fieldName="email"></s:fielderror></span>
									</td>
									<td id="test_email"></td>
								</tr>
								<tr>
									<th>姓名:</th>
									<td><input type="text" name="name" class="text" placeholder = "请输入真实姓名" maxlength="200"></td>
								</tr>
								<tr>
									<th>电话:</th>
									<td><input type="text" id="phone" name="phone" class="text" placeholder = "请使用正确的手机号码" onblur = "checkPhone(this.value)"></td>
									<td id="test_phone"></td>
								</tr>

								<tr>
									<th>地址:</th>
									<td><input type="text" name="addr" class="text" maxlength="200">
										<span style="color:red;"><s:fielderror fieldName="addr"></s:fielderror></span>
									</td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>验证码:</th>
									<td>
										<span class="fieldSet"> 
										<input type="text" id="captcha" name="checkImg" class="text captcha" maxlength="4" autocomplete="off">
										<img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action"
													title="点击更换验证码" onclick="change()">
										</span>
									</td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td><input type="submit" class="submit" value="注册"></td>
								</tr>
								
								<tr>
									<th>&nbsp;</th>
									
								</tr>
							</tbody>
						</table>
						
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container footer">
		
		<div class="span24">
			<ul class="bottomNav">
				<li><hr></hr></li>
			</ul>
		</div>
		<div class="span24">
			
		</div>
	</div>
	
</body>
</html>