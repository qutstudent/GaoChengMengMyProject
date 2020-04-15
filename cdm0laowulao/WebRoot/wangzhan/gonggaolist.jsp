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
        <div class="scd_m">
        	<ul class="list">
        	<%if(sousuoGonggaos!=null){ %>
				<%for(int i = 0; i < sousuoGonggaos.size(); i++){ %>
				<%Gonggao newGonggao = sousuoGonggaos.get(i); %>
            	<li>
                	<a href="<%=basePath %>wangzhan/gonggaoshow.jsp?gonggaoId=<%=newGonggao.getGonggaoId()%>">
                	+ <%=newGonggao.getGonggaoName() %>
                	-------------------------------------------------------
                	[<%=DateUtil.formatDate(newGonggao.getGonggaoDate(),"yyyy-MM-dd HH:mm:ss") %>]
                	</a>
                </li>
                <%} %>
            <%} %>
            </ul>
            <div class="space_hx">&nbsp;</div>
            <div class="pages">
            	第<%=gonggaocurrPage %>/<%=gonggaototalPage %>页
				总记录数:<%=sousuoGonggaosshuliang %>/每页显示:<%=gonggaorowCount %>条
                <a href="gonggaolist.jsp?ggtypeId=1&page=1">首页</a>
                <%if(gonggaocurrPage!=1){ %>
                <a href="gonggaolist.jsp?ggtypeId=1&page=<%=(gonggaocurrPage-1) %>">上一页</a>
                <%} %>
   				<%if(gonggaocurrPage!=gonggaototalPage){ %>
                <a href="gonggaolist.jsp?ggtypeId=1&page=<%=(gonggaocurrPage+1) %>">下一页</a>
                <a href="gonggaolist.jsp?ggtypeId=1&page=<%=gonggaototalPage %>">尾页</a>
                <%} %>
            </div>
        </div>
    </div>
</div>
</div>
<%@ include file="footer.jsp"%>