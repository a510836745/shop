<%@ page language="java" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	
	<body>
		<form action="${pageContext.request.contextPath}/admin/adminCategory_update.action" method="post">
			<input type="hidden" name="cid" value="${existCategory.cid}"/>
		    <table cellSpacing="1" cellPadding="5" width="100%" align="center" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td align="center" height="26" colspan="4">
						<strong>编辑一级分类</strong>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center">
						一级分类名称：
					</td>
					<td colspan="3">
						<input type="text" name="cname"  value="${existCategory.cname}"/>
					</td>
				</tr>
				<tr>
					<!--colSpan="表示一个表哥横跨几个单元格 -->
					<td align="center" colSpan="4"> 
						<input type="submit" value="确定"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="reset">重置</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<!--history.go(-1)返回上一个页面  -->
						<input type="button" onclick="history.go(-1)" value="返回"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>