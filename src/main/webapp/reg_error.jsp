<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="js/style.css" />
<style>
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%}
	</style>
<script type="text/javascript" src="js/boxOver.js"></script>
	 <script language=javascript>
  function chs()
  { if(document.form.username.value.trim()==null||document.form.username.value.trim()==''){
    alert("用户名不能为空");
	return false;
    }
   if(document.form.password.value.trim()==null||document.form.password.value.trim()==''){
    alert("密码不能为空");
	return false;
   }
  }
  </script>

 </head>
<body>

<div id="main_container">
    <div class="top_bar"></div>
    <div id="header">
        <div id="divstr"><br/><h2>你好</h2></div>
        <!-- end of oferte_content-->
    </div>
   <div id="main_content"> 
            <div id="menu_tab">
            <div class="left_menu_corner"></div>
                    <ul class="menu">
                         <li><a href="GoIndexAction.action" class="nav1">首页</a></li>
                         <li class="divider"></li>
                         <li><a href="GoIndexAction.action" class="nav2">在线购物</a></li>
                         <li class="divider"></li>
                         <li><a href="showCar.jsp" class="nav5">我的购物车</a></li>
                         <li class="divider"></li>
                         
                         <li class="divider"></li>
                          <c:if test="${empty sessionScope.user.username}">
                         <li><a href="login.jsp" class="nav3">用户登录</a></li>
                         <li class="divider"></li>                         
                         <li><a href="register.jsp" class="nav6">用户注册 </a></li>
                        
                       </c:if>
 			<li class="divider"></li>
                    </ul>

             <div class="right_menu_corner"></div>
            </div><!-- end of menu tab -->
    
    </div> 
    
    <div class="crumb_navigation">
    导航:  <span class="current"><a href="GoIndexAction.action">首页</a>&gt;&gt;用户注册</span>
    
    </div>
        
    <table border="0"  bgcolor="#e9e7e7" align="center" width=100% height="400px">
    <tr>
    <td width=20%>
    
    </td>
    
    <td class="center_content" width=100% height=400px align=center >
   <table>
    <tr>
    <td align="center"><h2>用户名已经存在，请重新填写注册信息</h2></td>
    
    </tr>
    <tr><td align=center height=30><h3>正在返回注册页面！若没有跳转<a href=register.jsp>点击这里</a></h3></td>
     </tr>
    </table>
      <% response.setHeader("refresh","3;url=register.jsp"); %>
	</td>
    </tr>
    </table>
    <div class="footer" align="center"><a href="admin/login.jsp"><font color="green" size="4">后台管理</font></a></div>
</div>
</body>
</html>
