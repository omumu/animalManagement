<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
    
	<script type="text/javascript">
	    function liuyanAdd()
        {
            <s:if test="#session.userType==null || #session.userType != 1">
                  alert("请先登录");
            </s:if>
            <s:if test="#session.userType == 1">
                 var strUrl = "<%=path %>/qiantai/liuyan/liuyanAdd.jsp";
	             var ret = window.open(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	             window.location.reload();
            </s:if>
        }
        
        function liuyanDetail(id)
        {
             var strUrl = "<%=path %>/liuyanDetail.action?id="+id;
             var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
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
	          <!-- <h1 style="font-size: 22px;">新闻喜讯</h1>
	          <p>
		           This simple, fixed width website template is released under a Creative Commons Attribution 3.0 Licence
		           This means you are free to download and use it for personal and commercial proj
	          </p>
	          <p>1111</p>
	          <p>2222</p> -->
	          <!-- <h1 style="font-size: 22px;">
	                                        系统留言板
	          </h1> -->
	          <div style="border:1px solid  #CCCCCC;width: 745px;margin-left: 10px">
		             <div style="margin: 10px;">
				           <c:forEach items="${requestScope.liuyanList}" var="liuyan" varStatus="sta">
		                       <div class="c1-bline" style="padding:7px 0px;margin-top: 11px;width: 735px;">
		                        <div class="f-left">
		                             <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
		                             <a href="#" onclick="liuyanDetail(${liuyan.id })">${liuyan.neirong }</a>
		                        </div>
		                        <div class="f-right">${liuyan.liuyanshi }</div>
		                        <div class="clear"></div>
		                       </div>
		                   </c:forEach>
		                   <br/>
		                   <center><a href="#" onclick="liuyanAdd()" style="color: black;font-family: 微软雅黑">发布留言</a></center>
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
