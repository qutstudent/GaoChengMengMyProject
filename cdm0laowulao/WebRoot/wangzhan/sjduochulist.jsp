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
        <div class="scd_m">
        	<ul class="list">
        	<%if(sousuoSjduochus!=null){ %>
				<%for(int i = 0; i < sousuoSjduochus.size(); i++){ %>
				<%Sjduochu newSjduochu = sousuoSjduochus.get(i); %>
            	<li>
                	<a href="<%=basePath %>wangzhan/sjduochushow.jsp?sjduochuId=<%=newSjduochu.getSjduochuId()%>">
                	+ <%=newSjduochu.getSjduochuName() %>
                	---<%=newSjduochu.getSjduochuMark1() %>
                	---<%=newSjduochu.getSjduochuDouble() %>
                	----------------------------------------------------
                	[<%=DateUtil.formatDate(newSjduochu.getSjduochuDate(),"yyyy-MM-dd HH:mm:ss") %>]
                	</a>
                </li>
                <%} %>
            <%} %>
            </ul>
            <div class="space_hx">&nbsp;</div>
            <div class="pages">
            	第<%=sjduochucurrPage %>/<%=sjduochutotalPage %>页
				总记录数:<%=sousuoSjduochusshuliang %>/每页显示:<%=sjduochurowCount %>条
                <a href="sjduochulist.jsp?page=1">首页</a>
                <%if(sjduochucurrPage!=1){ %>
                <a href="sjduochulist.jsp?page=<%=(sjduochucurrPage-1) %>">上一页</a>
                <%} %>
   				<%if(sjduochucurrPage!=sjduochutotalPage){ %>
                <a href="sjduochulist.jsp?page=<%=(sjduochucurrPage+1) %>">下一页</a>
                <a href="sjduochulist.jsp?page=<%=sjduochutotalPage %>">尾页</a>
                <%} %>
            </div>
        </div>
    </div>
</div>
</div>
<%@ include file="footer.jsp"%>