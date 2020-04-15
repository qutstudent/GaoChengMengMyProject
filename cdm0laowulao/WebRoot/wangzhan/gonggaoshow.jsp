<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
<%@ include file="../jiazai/sousuobaohan.jsp"%>
<div class="bg_b">
	<div class="pst">
    	您当前的位置：<a href="<%=basePath %>">首页</a>&gt; <a href="<%=basePath %>wangzhan/gonggaolist.jsp?ggtypeId=1"><%=newJcpeizhi.getGonggaoBieming() %>信息</a>
    </div>
</div>
<div class="nymain">
	<div class="scd cl">
	<%@ include file="left.jsp"%>
    <div class="scd_r">
    	<div class="r_top"><span><%=newJcpeizhi.getGonggaoBieming() %>信息</span></div>
    	<%if(sousuoGonggao!=null) {%>
        <div class="scd_m">
        	<h1 class="infotit"><%=sousuoGonggao.getGonggaoName()%></h1>
            <div class="conxx"><span>发布者：<em>管理员</em></span>|<span>上传时间：<em><%=DateUtil.formatDate(sousuoGonggao.getGonggaoDate(),"yyyy-MM-dd HH:mm:ss") %></em></span></div>
            <div class="desccon">
            	<%=sousuoGonggao.getGonggaoMark()%>
            </div>
        </div>
        <%} %>
    </div>
</div>
</div>
<%@ include file="footer.jsp"%>