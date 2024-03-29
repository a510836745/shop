<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript">
		function edit(cid) {
			window.location.href = "${pageContext.request.contextPath}/admin/adminCategory_edit.action?cid="+cid;
		}
		function addCategory(){
				window.location.href = "${pageContext.request.contextPath}/admin/adminCategory_add.action";
		}
		function deletec(cid) {
			window.location.href ="${pageContext.request.contextPath}/admin/adminCategory_delete.action?cid="+cid;
		}
		</script>
	</head>
	<body>
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" border="0">
					<tr>
						<td  align="center">
							<strong>一级分类列表</strong>
						</td>
					</tr>
					<tr>
						<td  align="right">
							<button type="button" onclick="addCategory()">添加</button>
						</td>
					</tr>
					<tr>
						<td align="center">
							<table cellspacing="0" cellpadding="0" rules="all" border="1" style="WIDTH: 100%;">
								<tr
									style="font-weight: bold; font-size: 12pt; height: 25px">
									<td align="center" width="18%">
										ID
									</td>
									
									<td align="center" width="17%">
										一级分类名称
									</td>
									<td width="7%" align="center">
										编辑
									</td>
									<td width="7%" align="center">
										删除
									</td>
								</tr>
								<c:forEach items="${categoryList }" var="c">
										<tr>
											<td align="center">
												${c.cid}
											</td>
											<td align="center">
												${c.cname }
											</td>
											<td align="center">
												<button type="button" onclick="edit(${c.cid})">编辑</button>
											</td>
											<td align="center">
												<button type="button" onclick="deletec(${c.cid})">删除</button>
											</td>
										</tr>
									</c:forEach>
							</table>
						</td>
					</tr>
			</table>
	</body>
</HTML>

