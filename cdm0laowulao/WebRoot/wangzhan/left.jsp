<%@ page language="java" contentType="text/html; charset=utf-8"  import="com.model.*,java.util.List,java.util.ArrayList"
	pageEncoding="utf-8"%>
	<div class="scd_l">
    	<div class="l_name"><%=newJcpeizhi.getShujuBieming() %>分类</div>
        <ul class="s_nav">
        <%if(sjleixings!=null){ %>
			<%for(int i = 0; i < sjleixings.size(); i++){ %>
        	<li>
            	<a href="<%=basePath %>wangzhan/shujulist.jsp?sjleixingId=<%=sjleixings.get(i).getSjleixingId() %>"><%=sjleixings.get(i).getSjleixingName() %></a>
            </li>
            <%} %>
        <%} %>
        </ul>
    </div>