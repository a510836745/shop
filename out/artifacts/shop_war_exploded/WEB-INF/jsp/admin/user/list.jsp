<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<script type="text/javascript">
			
			function deleteuser(uid) {
				window.location.href = "${pageContext.request.contextPath}/admin/admin_deleteUser.action?uid="+uid;
			}
		</script>
	</head>
	<body>
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" border="0">
					<tr>
						<td  align="center">
							<strong>用户列表</strong>
						</td>
					</tr>
					<tr>
						<td align="center">
							<table cellspacing="0" cellpadding="0" rules="all" border="1" style="WIDTH: 100%;">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px;">
									<td align="center" width="7%">
										序号
									</td>
									<td align="center" width="7%">
										用户名
									</td>
									
									<td width="7%" align="center">
										姓名
									</td>
									<td width="7%" align="center">
										email
									</td>
									<td width="7%" align="center">
										phone
									</td>
									<td width="7%" align="center">
										收货地址
									</td>
									<!-- <td width="7%" align="center">
										删除
									</td> -->
								</tr>
								<c:forEach items="${userList}" var="u">
										<tr>
										<td align="center">
												${u.uid}
											</td>
											<td align="center">
												${u.username}
											</td>
											
											<td align="center">
												${u.name}
											</td>
											<td align="center">
												${u.email}
											</td>
											<td align="center">
												${u.phone}
											</td>
											<td align="center">
												${u.addr}
											</td>
											<%-- <td align="center">
												<button type="button" onclick="deleteuser(${u.uid})">删除</button>
											</td> --%>
										</tr>
									</c:forEach>	
							</table>
						</td>
					</tr>
			</table>
	</body>
</HTML>

