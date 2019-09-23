<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/userInfo.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
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
    function change(){
        var img = document.getElementById("checkImg");
        img.src="${pageContext.request.contextPath}/checkImg.action?"+new Date();
    }
    function getInfo(submit){

    }
</script>


  </head>
  
  <body>
  <div class="container header">
      <div class="span5">
          <div class="logo">
              <a> <img
                      src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.jpg"
                      alt="" />
              </a>
          </div>
      </div>
      <div class="span9">
          <div class="headerAd">
              <img src="${pageContext.request.contextPath}/image/r___________renleipic_01/15.gif"
                   width="320" height="50"  />
          </div>
      </div>
      <%@ include file="menu.jsp"%>
  </div>
  <div class="container register">
      <div class="span24">
          <div class="wrap">
              <div class="main clearfix">
                  <div class="title">
                      <strong>我的信息</strong>MY INFORMATION
                  </div>
                  <form id="userInfoForm" method="post" action="${pageContext.request.contextPath}/updateUserInfo.action">
                      <table>
                        <c:forEach items="${list}" var="u">

                          <tbody>

                          <tr>
                              <th>用户名:</th>
                              <td><input type="text" id="username" name="username" class="text" value="${u.username}" maxlength="200"  readonly></td>


                          </tr>

                          <tr>
                              <th>姓名:</th>
                              <td><input type="text" id="name" name="name" class="text" placeholder = "${u.name}" value="${u.name}" maxlength="200"></td>
                          </tr>
                          <tr>
                              <th><span class="requiredField"></span>E-mail:</th>
                              <td><input type="text" id="email" name="email" class="text" maxlength="200" placeholder="${u.email}" value="${u.email}" onblur = "checkEmail(this.value)">
                                  <span style="color:red;"><s:fielderror fieldName="email"></s:fielderror></span>
                              </td>
                              <td id="test_email"></td>
                          </tr>
                          <tr>
                              <th>电话:</th>
                              <td><input type="text" id="phone" name="phone" class="text" placeholder = "${u.phone}" value="${u.phone}" onblur = "checkPhone(this.value)"></td>
                              <td id="test_phone"></td>
                          </tr>

                          <tr>
                              <th>地址:</th>
                              <td><input type="text" name="addr" class="text" maxlength="200" placeholder="${u.addr}" value="${u.addr}">
                                  <span style="color:red;"><s:fielderror fieldName="addr"></s:fielderror></span>
                              </td>
                          </tr>
                          <tr>
                              <th><span class="requiredField"></span>验证码:</th>
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
                              <td><input type="submit" id="submit" name="submit" class="submit" value="提交" onblur="getInfo(this.value)"></td>
                          </tr>

                          <tr>
                              <th>&nbsp;</th>

                          </tr>
                          </tbody>
                        </c:forEach>
                      </table>

                  </form>
              </div>
          </div>
      </div>
  </div>
  </body>
</html>
