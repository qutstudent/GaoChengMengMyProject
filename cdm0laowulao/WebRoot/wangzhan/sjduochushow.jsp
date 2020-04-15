<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
<%@ include file="../jiazai/sousuobaohan.jsp"%>
<div class="bg_b">
	<div class="pst">
    	您当前的位置：<a href="<%=basePath %>">首页</a>&gt; <a href="<%=basePath %>wangzhan/sjduochulist.jsp?ggtypeId=1"><%=newJcpeizhi.getSjduochuBieming() %>信息</a>
    </div>
</div>
<div class="nymain">
	<div class="scd cl">
	<%@ include file="dcleft.jsp"%>
    <div class="scd_r">
    	<div class="r_top"><span><%=newJcpeizhi.getSjduochuBieming() %>信息</span></div>
    	<%if(sousuoSjduochu!=null) {%>
        <div class="scd_m">
        	<h1 class="infotit"><%=sousuoSjduochu.getSjduochuName()%></h1>
            <div class="conxx">
            <span>发布者：<em><%=sousuoSjduochu.getYonghuName()%></em></span>
            |
            <span>电话：<em><%=sousuoSjduochu.getSjduochuMark1()%></em></span>
            |
            <span>工资：<em><%=sousuoSjduochu.getSjduochuDouble()%></em></span>
            |
            <span>时间：<em><%=DateUtil.formatDate(sousuoSjduochu.getSjduochuDate(),"yyyy-MM-dd") %></em></span>
            </div>
            <div class="desccon">
            	<%=sousuoSjduochu.getSjduochuMark()%>
            </div>
        </div>
        <%} %>
    </div>
</div>
</div>
<%@ include file="footer.jsp"%>