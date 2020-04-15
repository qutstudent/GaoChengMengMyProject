<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
<%@ include file="../jiazai/sousuobaohan.jsp"%>
<div class="bg_b">
	<div class="pst">
    	您当前的位置：<a href="<%=basePath %>">首页</a>&gt; <a href="<%=basePath %>wangzhan/shujulist.jsp"><%=newJcpeizhi.getShujuBieming() %>信息</a>
    </div>
</div>
<div class="nymain">
	<div class="scd cl">
	<%@ include file="left.jsp"%>
    <div class="scd_r">
    	<div class="r_top"><span><%=newJcpeizhi.getShujuBieming() %>信息</span></div>
        <div class="scd_m">
        	<ul class="prolist cl" style="width:100%; margin-top:10px;">
        	<%if(sousuoShujus!=null){ %>
				<%for(int i = 0; i < sousuoShujus.size(); i++){ %>
				<%Shuju newShuju = sousuoShujus.get(i); %>
            	<li>
                	<a href="<%=basePath %>wangzhan/shujushow.jsp?shujuId=<%=newShuju.getShujuId()%>">
                	<img src="<%=basePath %><%=newShuju.getShujuImg() %>" width=255px height=255px />
                    <div class="name"><%=newShuju.getShujuName() %></div>
                </a>
                </li>
                <%} %>
            <%} %>
            </ul>
            <div class="space_hx">&nbsp;</div>
            <div class="pages">
            	第<%=shujucurrPage %>/<%=shujutotalPage %>页
				总记录数:<%=sousuoShujusshuliang %>/每页显示:<%=shujurowCount %>条
                <a href="shujulist.jsp?ggtypeId=1&page=1">首页</a>
                <%if(shujucurrPage!=1){ %>
                <a href="shujulist.jsp?ggtypeId=1&page=<%=(shujucurrPage-1) %>">上一页</a>
                <%} %>
   				<%if(shujucurrPage!=shujutotalPage){ %>
                <a href="shujulist.jsp?ggtypeId=1&page=<%=(shujucurrPage+1) %>">下一页</a>
                <a href="shujulist.jsp?ggtypeId=1&page=<%=shujutotalPage %>">尾页</a>
                <%} %>
            </div>
        </div>
    </div>
</div>
</div>
<%@ include file="footer.jsp"%>