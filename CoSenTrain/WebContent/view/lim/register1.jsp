<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
   <title>Hello</title>
   <link rel="shortcut icon" href="">
   <link href="/web/css/container/container.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
   <link href="/web/css/container/dropdown.css" rel="stylesheet" type="text/css">
   <link href="/web/css/container/standardColors.css" rel="stylesheet" type="text/css">
   <link href="/web/css/lim/register1.css" rel="stylesheet" type="text/css">
 
</head>
<body>
   <div class="container">
      
      
      <jsp:include page="/view/container/containerTop.jsp" flush="false" />
<!-- LOGIN  Start -->
<div class="reg-wrapper-first">
   <div class="reg-wrapper-first-center">
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
      <div class="reg-first">
     
       <!-- 
       <div id="dv">
       <img alt="14이상" src="/web/img/lim/join/14join.JPG" onclick="limlogin1()"> 
       <img alt="14이하" src="/web/img/lim/join/14join_.JPG" onclick="limlogin2()"> 
       
       
      </div>
       -->
  
       
       <div>
       	<div>
       		<div class="reg-first-fourteen">14<i class="fa fa-long-arrow-up"></i></div>
       		<div class="reg-first-desc">14세 이상 고객</div>
       		<div class="reg-first-btn-wrapper"><button class="reg-first-btn" onclick="limRegister1()">가입하기</button></div>
       	</div>
       	<div>
       		<div class="reg-first-fourteen">14<i class="fa fa-long-arrow-down"></i></div>
       		<div class="reg-first-desc">14세 미만 고객</div>
       		<div class="reg-first-btn-wrapper"><button class="reg-first-btn" onclick="limRegister2()">가입하기</button></div>
       	</div>
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
<script type="text/javascript">
 function limRegister1(){
	 location.href="/web/view/lim/register2.jsp?page=/view/lim/join.jsp";
 }

 function limRegister2(){
	 location.href="/web/view/lim/register2.jsp?page=/view/lim/join.jsp";
   
 }
 
</script>
</html>


