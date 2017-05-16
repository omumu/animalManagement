<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
    
	<script type="text/javascript">
	     function zhutiAdd(catelogId)
	     {
	           <c:if test="${sessionScope.userType !=1}">
		           alert("请先登录");
		       </c:if> 
		       <c:if test="${sessionScope.userType ==1}">
		           var url="<%=path %>/qiantai/zhuti/zhutiAdd.jsp?catelogId="+catelogId;
		           var ret = window.open(url,"","dialogWidth:800px; dialogHeight:400px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	               window.location.reload();
	           </c:if> 
	     } 
	</script>
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
  </head>
   
  <body>
  <div id="main">
      <jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
      
      
      
      
      <div id="site_content">
	      <jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
	      <div class="content">
					 <div style="width:754px;margin-top: 1px;padding-bottom:5px;">
					      <!-- <div style="height:26px;background:url(/cwyxt/images/guangguang.PNG);font-size: 14px;color:#de3237;">
					         <span style="float:left;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;margin-left: 10px;">系统公告</span>
							 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
					      </div> -->
					      <div style="border:1px solid #CCCCCC">
					           <c:forEach items="${requestScope.zhuti_list_all}" var="zhuti">
			                        <div class="c1-bline" style="padding:7px 0px;">
				                        <div class="f-left">
				                             <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
				                             <a href="<%=path %>/huifuAll.action?zhutiId=${zhuti.id }" style="color: black">${zhuti.title }</a>
											 (${zhuti.huifushu})
				                        </div>
				                        <div class="f-right" style="margin-right: 10px;">${zhuti.shijian }</div>
				                        <div class="clear"></div>
			                        </div>
			                   </c:forEach>  
			                   <br/>
			                   <center><img src="<%=path %>/img/newtopic.gif" onclick="zhutiAdd(${requestScope.catelogId })"/></center>    
								<br/><br/>
					      </div>
					 </div>
	      </div>
      </div>
      
      
      
      
      
      <footer>
          <a href="<%=path %>/login.jsp">系统后台</a>
      </footer>
  </div>
</body>
</html>
