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
      
	    		
    Members member = new Members();
    int no=MemberDao.getInstance().getNumber();
    member.setUserno(no);
    member.setName(name); 
    member.setPwweb(b.getPwweb());
    member.setPwticketing(b.getPwticketing());
    member.setBirth(birth);
    
    if(gender.equals("남")){
    	gender="M";
    }else if(gender.equals("여")){
    	gender="W";
    }
    member.setGender(gender);
    member.setEmail(b.getEmail());
    member.setEmailreceivable(b.getEmailreceivable());
    member.setTel(b.getTel());
    member.setPhone(phone);
    member.setUsertype("user");
    member.setAddr(b.getAddr());
    member.setZipcodeno(Integer.parseInt(request.getParameter("addr3")));
    member.setIsDeleted("N");
    System.out.println(member);
    
    MemberDao.getInstance().insertMember(member);
    
  %>
         
      
      <jsp:include page="/view/container/containerTop.jsp" flush="false" />
<!-- LOGIN  Start -->
<div class="login-wrapper">
   <div class="login-wrapper-center">
      <br />
      <h1 style="padding: 30px 30px 0 30px;" class="tkting-method">회원가입</h1>
      <span style="float:right;font-size:12px;margin-right:30px;">
         <a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
         <i style="cursor:default;">&gt;</i>
         <a href="" style="cursor:pointer;text-decoration:none;color:black;">Cosen 회원</a>
         <i style="cursor:default;">&gt;</i>
      <a href="#" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">회원가입</a>
      </span>
      <br />
      <br />
      <br />
      
      <!--  start-->
      <div style="width:940px;padding:0 30px 30px 30px;height:500px;background-color:white;">
  
      
       <div style="margin-bottom:50px; width:900px; height:200px; background-color: #f9f9fa; text-align: center;">   
              <div style="width:900px; height:90px;"></div>
          <div style="margin-bottom:80px;font-size: 20px; font-weight: bold; color: black;">  <i style="width:100px;height:100px; margin: 0 auto; "class="fa fa-train"></i> 
            <b> <%=name%> 고객님 회원가입을 환영합니다. (코센트레인 회원번호 : <%=no %> ) </b></div>
       
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
