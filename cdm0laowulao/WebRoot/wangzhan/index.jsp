<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
<%@ include file="../jiazai/sousuobaohan.jsp"%>
<div class="mainbox">
    <div class="indtitle" style="background:url(<%=basePath %>wangzhan/images/tit_line2.png) bottom center no-repeat;"><%=newJcpeizhi.getShujuBieming() %>展示</div>
    <div class="indconbox">
    	<ul class="prolist cl">
    	<%if(shujus!=null){ %>
			<%for(int i = 0; i < shujus.size(); i++){ %>
			<%Shuju newShuju = shujus.get(i); %>
    		<li>
            	<a href="<%=basePath %>wangzhan/shujushow.jsp?shujuId=<%=newShuju.getShujuId()%>">
                	<img src="<%=basePath %><%=newShuju.getShujuImg() %>" width=255px height=255px/>
                    <div class="name"><%=newShuju.getShujuName() %></div>
                </a>
            </li>
            <%} %>
        <%} %>
        </ul>
    </div>
    <div class="indtitle" style="background:url(<%=basePath %>wangzhan/images/tit_line2.png) bottom center no-repeat;">行业动态</div>
    <div class="indconbox cl">
        <div class="newslist fr" style="width:580px;">
        	<div class="newstit"><a href="<%=basePath %>wangzhan/gonggaoshow.jsp?gonggaoId=2">+更多</a>联系我们</div>
            <ul class="txtlist">
            	<li><%=newJcpeizhi.getJcpeizhiName()%></li>
            	<li>地址：XX市XX区XXXXXXXXXX街XXX路XXXX号</li>
            	<li>电话：086- 010- 88888888- 8888</li>
            	<li>手机：086- 13912345678</li>
            	<li>E-mail：010- 88888888- 8888</li>
            </ul>
        </div>
        <div class="newslist fl" style="width:580px;">
        	<div class="newstit"><a href="<%=basePath %>wangzhan/gonggaolist.jsp?ggtypeId=1">+更多</a><%=newJcpeizhi.getGonggaoBieming() %>信息</div>
            <ul class="txtlist">
            <%if(gonggaos!=null){ %>
				<%for(int i = 0; i < gonggaos.size(); i++){ %>
				<%Gonggao newGonggao = gonggaos.get(i); %>
            	<li><a href="<%=basePath %>wangzhan/gonggaoshow.jsp?gonggaoId=<%=newGonggao.getGonggaoId()%>"><%=newGonggao.getGonggaoName() %></a><span><%=DateUtil.formatDate(newGonggao.getGonggaoDate(),"yyyy-MM-dd HH:mm:ss") %></span></li>
            	<%} %>
            <%} %>
            </ul>
        </div>
    </div>
</div>
<%@ include file="footer.jsp"%>