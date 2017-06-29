<%@page import="dao.lim.MemberDao"%>
<%@page import="bean.lim.Members"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
   <title>Hello</title>
   <link rel="shortcut icon" href="">
   <link href="/web/css/container/container.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
   <link href="/web/css/container/dropdown.css" rel="stylesheet" type="text/css">
   <link href="/web/css/container/standardColors.css" rel="stylesheet" type="text/css">

   <style>
      input {
         margin: 0;
         padding: 10px;
         border: 0;
         font-size: 15px;
      }
.login-wrapper {
   background-image: url("/web/img/bg/bg_container.jpg");
   background-repeat: repeat;
   background-size: inherit;
   background-position: center;
   background-color: #64053C;
}
      
.login-wrapper-center {
   width: 1000px;
   margin: 0 auto;
   background-color: snow;
}
.lim_join{
 
}
<%
 request.setCharacterEncoding("EUC-KR");
%>
   </style>
   <jsp:useBean id="b" class="bean.lim.Members"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>  
</head>
<body>
   <div class="container">
         
      <%
      
      String name=  (String)application.getAttribute("name");
	    String birth =(String)application.getAttribute("birth");
	    String phone =(String)application.getAttribute("phone");  
	    		String gender =(String)application.getAttribute("gender");
        int userno= (Integer)application.getAttribute("userno");
	    		
    Members member = new Members();
    member.setUserno(userno);
    member.setName(name); 
    member.setPwweb(b.getPwweb());
    member.setBirth(birth);
     member.setGender(gender);
    member.setPhone(phone);
    System.out.println(member);

    MemberDao.getInstance().modifypwWeb(member);
    
  %>
         
      
      <jsp:include page="/view/container/containerTop.jsp" flush="false" />
<!-- LOGIN  Start -->
<div class="login-wrapper">
   <div class="login-wrapper-center">
      <br />
      <h1 style="padding: 30px 30px 0 30px;" class="tkting-method">회원정보수정</h1>
      <span style="float:right;font-size:12px;margin-right:30px;">
         <a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
         <i style="cursor:default;">&gt;</i>
         <a href="" style="cursor:pointer;text-decoration:none;color:black;">마이페이지</a>
         <i style="cursor:default;">&gt;</i>
      <a href="#" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">회원정보수정</a>
      </span>
      <br />
      <br />
      <br />
      
      <!--  start-->
      <div style="width:940px;padding:0 30px 30px 30px;height:500px;background-color:white;">
  
      
       <div style="margin-bottom:50px; width:900px; height:200px; background-color: #f9f9fa; text-align: center;">   
              <div style="width:900px; height:90px;"></div>
          <div style="margin-bottom:80px;font-size: 20px; font-weight: bold; color: black;">  <i style="width:100px;height:100px; margin: 0 auto; "class="fa fa-train"></i> 
            <b> <%=name%> 고객님 회원정보가 수정되었습니다. (코센트레인 회원번호 : <%=userno %> ) </b></div>
       
       </div>
      
       
      
      </div>
      <!-- end -->
   </div>
   
</div>

<!-- LOGIN  End   -->
      <jsp:include page="/view/container/containerBottom.jsp" flush="false" />
         <!-- 수정 부분 -->
      </div>
   
   <script type="text/javascript"  src="/web/js/container/clock.js" charset="UTF-8"></script>
 
</body>
 
</html>
