<%@ page language="java" contentType="text/html; charset=utf-8" import="com.model.*"
	pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
<%@ include file="../jiazai/sousuobaohan.jsp"%>
<script type="text/javascript">
var yonghuId = <%=yonghuId%>;
	function addSjshaochu(shujuId){
		if (yonghuId==0) {
			if(confirm("注册登录网站？")){
				window.location.href="<%=basePath %>shouye/index.jsp";
				return false;
			}else{
				return false;
			}
		}
		$.post("<%=basePath %>addSjshaochu?yonghuId="+yonghuId,{shujuId:shujuId},function(result){
			if(result.errorMsg){
				alert(result.errorMsg);
			}else{
				alert("投递简历成功，请到会员中心查看详情！");
				location.reload();
			}
		},"json");
	}
	
</script>
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
    	<%if(sousuoShuju!=null) {%>
        <div class="scd_m">
        	<h1 class="infotit"><%=sousuoShuju.getShujuName()%></h1>
            <div class="conxx"><span>发布者：<em><%=sousuoShuju.getUserName()%></em></span>
            |<span>上传时间：<em><%=DateUtil.formatDate(sousuoShuju.getShujuDate(),"yyyy-MM-dd HH:mm:ss") %></em></span></div>
            <div class="desccon">
            <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td valign="top" width="355">
				  <table width="100%" border="0" cellspacing="0" cellpadding="2">
                      <tr>
                        <td><table cellspacing=0 cellpadding=0 width=355 height=180 border=0>
                            <tbody>
                              <tr>
                                <td align=center>
                                <%
									if (sousuoShuju.getShujuImg() != null) {
								%> <img src="<%=basePath %><%=sousuoShuju.getShujuImg()%>" height="200" width="200" />
								<%
 									} else {
								%> <img src="<%=basePath %>wangzhan/images/cuowu.jpg" width="200" height="200" />
								<%
									}
								%>
                                </td>
                              </tr>
                            </tbody>
                        </table></td>
                      </tr>
                  </table></td>
                  <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
						<form name="form1" method="post">
                      	<tr>
							<td height="40" align="left">&nbsp;地点：<%=sousuoShuju.getShujuMark1()%>
							</td>
							<td height="40" align="left">&nbsp;备注：<%=sousuoShuju.getShujuMark2()%>
							</td>
						</tr>
						<tr>
							<td height="40" align="left">&nbsp;人数：<%=sousuoShuju.getShujuZong()%>
							</td>
							<td height="40" align="left">&nbsp;工资：￥<%=sousuoShuju.getShujuDouble()%>元
							</td>
						</tr>
						<tr>
							<td height="40" align="left">&nbsp;类型：<%=sousuoShuju.getSjleixingName()%>
							</td>
							<td height="50" align="left">
							<a href="javascript:addSjshaochu(<%=sousuoShuju.getShujuId()%>)">
							<input type="button" value="投递简历" />
							</a>
							</td>
						</tr>
						</form>
                  </table></td>
                </tr>
                
              </table>
              <table width="100%"  border="0" cellspacing="0" cellpadding="0" style="padding-top:15px;">
                <tr>
					<td height="35" ><b>&nbsp;&nbsp;详细介绍</b></td>
			  	</tr>
              	<tr>
              		<td style="border:1px solid #e0e0e0; border-top:0px; padding:10px; line-height:25px;">
              			<%=sousuoShuju.getShujuMark()%>
              		</td>
              	</tr>
              </table>
              <table width="100%"  border="0" cellspacing="0" cellpadding="0" style="padding-top:15px;">
              	<tr>
					<td height="35" ><b>&nbsp;&nbsp;评价信息</b></td>
			  	</tr>
              <%if(sousuoSjpingluns.size()!=0) {%>
				<%for(int i = 0; i < sousuoSjpingluns.size(); i++){ %>
					<%Sjpinglun newSjpinglun = sousuoSjpingluns.get(i); %>
              	<tr>
              		<td style="border:1px solid #e0e0e0; border-top:0px; padding:10px; line-height:25px;">
              			<b>楼层：</b><%=i+1 %>&nbsp;&nbsp;&nbsp;&nbsp;<b>用户：</b><%=newSjpinglun.getYonghuName() %>&nbsp;&nbsp;&nbsp;&nbsp;<b>时间：</b><%=DateUtil.formatDate(newSjpinglun.getSjpinglunDate(),"yyyy-MM-dd HH:mm:ss") %><br>
              			<b>评价：</b><%=newSjpinglun.getSjpinglunName() %><br>
              		</td>
              	</tr>
				<%} %>
			  <%} %>
              </table>
            </div>
        </div>
        <%} %>
    </div>
</div>
</div>
<%@ include file="footer.jsp"%>