<%@ page language="java" contentType="text/html; charset=utf-8"  import="com.model.*,com.util.*,java.util.List,java.util.ArrayList"  pageEncoding="utf-8"%>
   
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	// 权限验证
	Yonghu yonghu = (Yonghu)session.getAttribute("yonghu");
	int yonghuId = 0;
	if(yonghu!=null){
		yonghuId = yonghu.getYonghuId();
	}
%>
<%@ include file="../jiazai/jcpeizhibaohan.jsp"%>
<%
	Jcpeizhi newJcpeizhi = (Jcpeizhi)session.getAttribute("jcpeizhi");
%>
<%@ include file="../jiazai/headerbaohan.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=newJcpeizhi.getJcpeizhiName()%></title>
<link rel="stylesheet" type="text/css" href="<%=basePath %>jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="<%=basePath %>jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath %>jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<link href="<%=basePath %>wangzhan/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>wangzhan/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"  src="<%=basePath %>wangzhan/js/nav.js"></script>
</head>
<body>
<div class="header">
	<div class="contentbox">
    	<div class="hd_txt">欢迎光临<%=newJcpeizhi.getJcpeizhiName()%>！</div>
        <div class="hd_right">
        <form id="form" method="post" name="form" action="<%=basePath%>wangzhan/shujulist.jsp">
        <input style="height:23px;width:150px;" placeholder="<%=newJcpeizhi.getShujuBieming() %>名称" name="shujuName"/>
        <input type="submit" value="搜索"/>
        </form>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="menulogo">
	<div class="contentbox">
    	<div class="logo"><a href="<%=basePath%>"><font color="#fff" size="7"><b><%=newJcpeizhi.getJcpeizhiName()%></b></font></a></div>
        <div class="nav">
        	<ul class="cl">
            	<li><a href="<%=basePath%>" class="cur">网站首页</a></li>
                <li><a href="<%=basePath %>wangzhan/gonggaoshow.jsp?gonggaoId=1">关于我们</a></li>
                <li><a href="<%=basePath %>wangzhan/shujulist.jsp"><%=newJcpeizhi.getShujuBieming() %>信息</a></li>
                <li><a href="<%=basePath %>wangzhan/sjduochulist.jsp"><%=newJcpeizhi.getSjduochuBieming() %>信息</a></li>
                <li><a href="<%=basePath %>wangzhan/gonggaolist.jsp?ggtypeId=1"><%=newJcpeizhi.getGonggaoBieming() %>信息</a></li>
                <li><a href="<%=basePath %>wangzhan/gonggaoshow.jsp?gonggaoId=2">联系我们</a></li>
                <%if(yonghuId==0){%>
                <li><a href="<%=basePath %>shouye/index.jsp">登录注册</a></li>
                <%}else{%>
                <li><a href="<%=basePath %>houtai/yonghuMain.jsp">会员中心</a></li>
                <%}%>
            </ul>
        </div>
    </div>
</div>
<div class="flexslider">
	<ul class="slides">
		<li style="background:url(<%=basePath %>wangzhan/images/1.jpg) 50% 0 no-repeat;"></li>
		<li style="background:url(<%=basePath %>wangzhan/images/2.jpg) 50% 0 no-repeat;"></li>
	</ul>
</div>