<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	#headerLogin{
		position: relative;
	}
	#headerLogin li{
		display: list-item;
	}
	.userInfo:hover .userSetting{
		display: block;
	}
	.userSetting{
		position: absolute;
		top: 25px;
		left: 7px;
		width: 120px;
		/*height: 150px;*/
		background-color: #ffffff;
		border: 1px solid #999999;
		padding: 5px;
		z-index: 99;
		display: none;
	}
	.userSetting li {
		width: 100%;
		height: 30px;
		line-height: 30px;
		text-align: center;
		color: #666666;
	}

</style>
<div class=" last">
	<div class="topNav clearfix">
		<ul id="headerLogin">
			<c:choose>
				<c:when test="${loginUser==null}">
					<li  >
						<a href="${pageContext.request.contextPath}/login.action">登录</a>|
					</li>
					<li id="headerRegister" class="headerRegister" >
						<a href="${pageContext.request.contextPath}/regist.action">注册</a>|</li>
						<li   >
					<a href="${pageContext.request.contextPath}/messageList.action?page=1" style="color: red;">留言板</a>
				   |</li>
				</c:when>
				<c:otherwise>
					<li class="userInfo">
						<a href="${pageContext.request.contextPath}/searchUserInfo.action" style = "color : red">${loginUser.name}</a>
						<ul class="userSetting">
							<li><a href="${pageContext.request.contextPath}/searchUserInfo.action" style = "color : red">个人信息</a></li>
							<li><a href="${pageContext.request.contextPath}/searchUserInfo.action" style = "color : red">地址管理</a></li>
						</ul>
					</li>
					<li   >
						<a href="${pageContext.request.contextPath}/myOrder.action?page=1" style="color: red;">我的订单</a>
				   |</li>
				   <li  >
						<a href="${pageContext.request.contextPath}/messageList.action?page=1" style="color: red;">留言板</a>
				   |</li>
				    <li class="cart">
						<a href="${pageContext.request.contextPath}/myCart.action">购物车</a>
					</li>
					<li  class="headerLogout" style="display: list-item;">
					<li ><a href="${pageContext.request.contextPath}/userLogout.action">退出</a>|</li>
				</c:otherwise>
			</c:choose>
			
			<li><a href="${pageContext.request.contextPath}/admin.action">后台登录</a></li>
		</ul>
	</div>
	
	<div class="phone">
		<form method="post" action="${pageContext.request.contextPath}/searchProduct.action" >
                <input id="condition" name="condition" type="text" value="请输入关键词" onfocus="this.value = '';"
                onblur="if (this.value == '') {this.value = '请输入关键词';}">
                <input id="searchSub" type="submit" value="搜索">
        </form>
	</div>
</div>
<div class="span24">
	<ul class="mainNav">
		<li><a href="${pageContext.request.contextPath}/index.action">首页</a> |</li>
		<c:forEach var="c" items="${cList}">
		<li><a href="${pageContext.request.contextPath}/findCategorySecond.action?cid=${c.cid}&page=1">${c.cname}</a> |</li>
		</c:forEach>
	</ul>
</div>
