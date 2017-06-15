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
.lim_join{
 
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
      <!-- <div style="width:940px;padding:0 30px 30px 30px;height:500px;background-color:white;"> -->
     
      <form action="joinInsert.jsp" name="joinFrm" method="post">
		 
		<div>
			<table>
 
				 
					<tr>
						<th> 이름</th>
						<td><input type="text" name="name" class="inputText"
							required="required" maxlength="5" size="30" onblur="nameCheck()" /></td>
					</tr>
			
					<tr>
						<th>홈페이지*</th>
						<td>비밀번호<input type="password" name="password1" class="inputText"
											size="30" /></td>
					    <td>비밀번호확인<input type="password" name="password2" class="inputText"
							size="30" onblur="passFun()" />

							<td><input type="hidden" name="password"></input></td></td>
					    
					</tr>
					<tr>
						<th>현장발매*</th>
						<td>비밀번호<input type="password" name="password1" class="inputText"
											size="30" /></td>
					    <td>비밀번호확인<input type="password" name="password2" class="inputText"
							size="30" onblur="passFun()" />

							<td><input type="hidden" name="password"></input></td></td>
					    
					</tr>

					<tr>
			             <th>생년월일*</th>
					</tr>
					   <input type="text" value="" readonly="readonly">
					<tr>
					    <th>성별*</th>
					    <input type="text" value="" readonly="readonly">
					    
					</tr>
					
					<tr>
						<th>이메일*</th>
						<td><input type="text" value=""> <input type="button" value="이메일 인증"/>    
						</td>
					</tr>
					<tr>
						<th>이메일수신여부</th>
						<td>예<input type="radio" value="yes"> 아니오<input type="radio" value="no"/>    
						</td>
					</tr>
					
					
					<tr>
						<th>자택전화</th>
						<td><input type="text" name="phone" size="30"> </td>
						
						</tr>
						
					
					<tr>
						<th>휴대전화*</th>
						<td><input type="text" name="phone" size="30"><input type="button" value="휴대전화인증"> </td>
						
						</tr>	
						<tr>
						<th >주소</th>	 
	                    <td>   <input type="text" size="10"> <input type="button" value="검색"></td>				 
   					     <td> <input type="text" size="30">  <input type="text" size="30"></td>
   					</tr>
			 
			</table>
			<div class="apply">
				<span class="apply"><a href="javascript:apply()"
					class="apply">등록</a></span>
			</div>
		</div>
		<!-- </div> -->
	</form>
      
      
      
      
       
      
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
