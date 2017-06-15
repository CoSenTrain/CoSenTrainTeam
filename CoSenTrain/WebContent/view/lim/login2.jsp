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
 
   </style>
</head>
<body>
   <div class="container">
      
      
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
      <a href="#" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">로그인</a>
      </span>
      <br />
      <br />
      <br />
      
      <!--  start-->
      <div style="width:940px;padding:0 30px 30px 30px;height:500px;background-color:white;">
     
      <h2>본인인증 및 가입여부 확인</h2>
               <h3>  휴대전화를 통하여 SR회원가입 여부를 확인하실 수 있습니다. </h3>
      <div class="login-rootlayer-wrapper">
			<div  class="login-layer-wrapper"> 
				<div class="login-layer-wrapper-left">
				   
				   <img alt="휴대전화 인증" src="/web/img/lim/join/phone.JPG" onclick="lim_phone()">
				   
				</div>
				<div class="login-layer-wrapper-right">
					<p>
						휴대전화 인증이랑? 주민등록번호 대체수단으로 주민등록 번호 대신 본인<br /> 
						명의로 등록한 휴대전화 정보를 통해 본인확인을 하게 됩니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
				</div>
			</div>
			<div class="login-frm-discription">
				<div>
					<label>인터넷 익스플로러(IE)에서 본인인증 후 '실행 스크립트가 존재하지 않습니다.'라는 메시지가 나오는 경우</label>
				</div>
				<ul>
					<li>
						[인터넷 옵션]>[보안]탭에서 [신뢰할수 있는 사이트]로 이동합니다.
					</li>
					<li>
						[사이트]버튼을 클릭한 후 https://container.jsp 을 추가한 다음 다시 시도해 주십시오.
					</li>
				</ul>
			</div>
		</div>
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
   <script type="text/javascript">
    function lim_phone() {
    	
    	window.open("popup.jsp", "id",
		"left=700,top=400,width=400,height=400");

				}
			</script>
</body>
 
</html>
