<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
		BODY {
			MARGIN: 0px;
			BACKGROUND-COLOR: #ffffff
		}
		
		BODY {
			FONT-SIZE: 12px;
			COLOR: #000000
		}
		
		TD {
			FONT-SIZE: 12px;
			COLOR: #000000
		}
		
		TH {
			FONT-SIZE: 12px;
			COLOR: #000000
		}
</style>
</head>
	<body>
		<%-- <table width="100%" height="70%"  border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="100%" background="${pageContext.request.contextPath}/images/top_100.jpg">
				</td>
			</tr>
		</table> --%>
		<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="50">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="15%" align="left">
								<font color="#000000"> 
										 
								</font>
							</td>
							<td width="60%" align="center">
											<font ></font><h1>欢迎登录系统后台</h1>
							</td>
							<td width="15%">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											用户名：
											<font color="red">${adminuserLogin.username}</font>
										</td>
										
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</HTML>
