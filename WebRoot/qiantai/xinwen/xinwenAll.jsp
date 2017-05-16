
<%@ page language="java" contentType="text/html; charset=utf-8"    
        pageEncoding="utf-8"%>    
    
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
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	 <link rel="stylesheet" type="text/css" href="<%=path %>/css/component.css" />
	  <link rel="stylesheet" type="text/css" href="<%=path %>/css/demo.css" />
	   <link rel="stylesheet" type="text/css" href="<%=path %>/css/normalize.css" />
	
	 <script type="text/javascript">
  
  function chkvalue(){
    	
	   var name=document.getElementById("input-4").value;
	  if(document.getElementById("input-4").value==""){
		  alert("查找条件不能为空!");
	  }
	  else{
		 
	   window.location.href="<%=path %>/xinwenserch.action?biaoti="+name; 
	  
	   
	  }
	 
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
	                                        会员注册
	          </h1> -->
	          
	                <span class="input input--hoshi">
					<input class="input__field input__field--hoshi" type="text" id="input-4" style="font-size:22px" onblur="chkvalue()"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-4">
						<span class="input__label-content input__label-content--hoshi" style="font-size:15px">新闻标题搜索</span>
					</label>
				</span><br>
				
				    
	    
	          
					 <div style="width:754px;margin-top: 1px;padding-bottom:5px;">
					  <div style="border:1px solid #dfdfdf">
					  <c:forEach items="${requestScope.xinwenserch}" var="xinwen">
								   <div class="c1-bline" style="padding:7px 0px;">
								       <div class="f-left" style="margin-left: 10px;margin-top: 11px;">
									         <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
								             <a style="" href="<%=path %>/xinwenDetailQian.action?id=${xinwen.id}">${xinwen.biaoti}</a>
								       </div>
								      <div class="f-right" style="margin-right: 10px;">${xinwen.shijian}</div>
								      <div class="clear"></div>
								  </div>
								</c:forEach>
								
								
								  <c:forEach items="${requestScope.xinwenList}" var="xinwen">
								   <div class="c1-bline" style="padding:7px 0px;">
								       <div class="f-left" style="margin-left: 10px;margin-top: 11px;">
									         <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
								             <a style="" href="<%=path %>/xinwenDetailQian.action?id=${xinwen.id}">${xinwen.biaoti}</a>
								       </div>
								      <div class="f-right" style="margin-right: 10px;">${xinwen.shijian}</div>
								      <div class="clear"></div>
								  </div>
								</c:forEach>
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
