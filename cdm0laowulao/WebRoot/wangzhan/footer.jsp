<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<!--底部--> 
<div class="links">
	<div class="contentbox">
    	<p>友情链接：</p>
        <a href="<%=basePath %>" target="_blank">中国政府网 </a>
        <a href="<%=basePath %>" target="_blank">中国网</a>
        <a href="<%=basePath %>" target="_blank">人民网 </a>
        <a href="<%=basePath %>" target="_blank">新华网 </a>
        <a href="<%=basePath %>" target="_blank">中新网 </a>
        <a href="<%=basePath %>" target="_blank">央视网 </a>
        <a href="<%=basePath %>" target="_blank">中广网 </a>
        <a href="<%=basePath %>" target="_blank">中国日报 </a>
        <a href="<%=basePath %>" target="_blank">中青在线 </a>
        <a href="<%=basePath %>" target="_blank">中国政府网 </a>
        <a href="<%=basePath %>" target="_blank">中国网</a>
        <a href="<%=basePath %>" target="_blank">人民网 </a>
        <a href="<%=basePath %>" target="_blank">新华网 </a>
        <a href="<%=basePath %>" target="_blank">中新网 </a>
        <a href="<%=basePath %>" target="_blank">央视网 </a>
        <a href="<%=basePath %>" target="_blank">中广网 </a>
        <a href="<%=basePath %>" target="_blank">中国日报 </a>
        <a href="<%=basePath %>" target="_blank">中青在线 </a>
    </div>
</div>
<div class="footer">
	<div class="ftmenu">
    	<a href="<%=basePath %>">网站首页</a>
    	<a href="<%=basePath %>wangzhan/gonggaoshow.jsp?gonggaoId=1">关于我们</a>
        <a href="<%=basePath %>wangzhan/shujulist.jsp"><%=newJcpeizhi.getShujuBieming() %>信息</a>
        <a href="<%=basePath %>wangzhan/sjduochulist.jsp"><%=newJcpeizhi.getSjduochuBieming() %></a>
        <a href="<%=basePath %>wangzhan/gonggaolist.jsp?ggtypeId=1"><%=newJcpeizhi.getGonggaoBieming() %>信息</a>
        <a href="<%=basePath %>wangzhan/gonggaoshow.jsp?gonggaoId=2">联络我们</a>
        <%if(yonghuId==0){%>
		<a href="<%=basePath %>shouye/index.jsp">登录注册</a>
		<%}else{%>
		<a href="<%=basePath %>houtai/yonghuMain.jsp">会员中心</a>
		<%}%>
    </div>
    <div class="ft_txt">
    	地址：XX市XX区XXXXXX街XXX路XXXX号   电话：010- 88888888   E-mail:13012345678@163.com<br />版权所有：<%=newJcpeizhi.getJcpeizhiName()%>
    </div>
</div>



<script type="text/javascript" src="<%=basePath %>wangzhan/js/jquery.flexslider-min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.flexslider').flexslider({
		directionNav: true,
		pauseOnAction: false
	});
});

</script>


<script>
function addFavorite2() {
    var url = window.location;
    var title = document.title;
    var ua = navigator.userAgent.toLowerCase();
    if (ua.indexOf("360se") > -1) {
        alert("由于360浏览器功能限制，请按 Ctrl+D 手动收藏！");
    }
    else if (ua.indexOf("msie 8") > -1) {
        window.external.AddToFavoritesBar(url, title); //IE8
    }
    else if (document.all) {
  try{
   window.external.addFavorite(url, title);
  }catch(e){
   alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
  }
    }
    else if (window.sidebar) {
        window.sidebar.addPanel(title, url, "");
    }
    else {
  alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
    }
}
</script>


</body>
</html>