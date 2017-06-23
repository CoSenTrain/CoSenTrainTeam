<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Hello</title>
<link rel="shortcut icon" href="">
<link href="/web/css/container/container.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
<link href="/web/css/container/dropdown.css" rel="stylesheet"
	type="text/css">
<link href="/web/css/container/standardColors.css" rel="stylesheet"
	type="text/css">
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<style>
.table-wrapper {
	border-spacing: 0;
	border-top: 2px solid #F3F3F3;
	width: 940px;
	background-color: yellow;
}
 
.table-th {
	background-color: #F3F3F3;
	padding: 10px;
	text-align: left;
}

.table-td {
	background-color: white;
	width: 740px;
	padding: 10px;
}

span {
	display: inline-block;
}
  
.spanPass {
	width: 120px;
}

.discription {
	margin-left: 10px;
	font-size: 13px;
}

input[type="text"] {
	display: inline-block;
	background-color: #F3F3F3;
	padding: 3px;
	margin: 3px;
}

ul {
	padding-left: 20px;
	margin: 0;
}

ul li {
	font-size: 13px;
}

button {
	display: inline-block;
	font-weight: bold;
	color: snow;
	background-color: #666;
	height: 25px;
	border: 0;
	border-radius: 0 7px;
	padding: 0 15px 5px 15px;
}

input[type="radio"] {
	margin-top: 0;
	width: 17px;
	height: 17px;
	border: 2px solid lightgray;
}

input[type="button"] {
	display: inline-block;
	font-weight: bold;
	color: snow;
	width: 150px;
	height: 40px;
	border: 0;
	border-radius: 0 7px;
	margin: 10px 1px;
}

input[type="button"]:first-child {
	background-color: crimson;
}

input[type="button"]:last-child {
	background-color: #666;
}
</style>
<style>
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
<script type="text/javascript">
	
</script>
<style type="text/css">
</style>


</head>
<body>

					<%
						 
					  String name=  (String)application.getAttribute("name");
					    String birth =(String)application.getAttribute("birth");
					    String phone =(String)application.getAttribute("phone");  
					    		String gender =(String)application.getAttribute("gender");
					    		 application.setAttribute("name", name); 
					    		   application.setAttribute("birth", birth); 
					    		   application.setAttribute("phone", phone); 
					    		   application.setAttribute("gender", gender); 
					 
					     System.out.println(name);
					   System.out.println(birth);
					   System.out.println(phone);
					   System.out.println(gender);
					
					%>
	<div class="container">


		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
		<!-- LOGIN  Start -->
		<div class="login-wrapper">
			<div class="login-wrapper-center">
				<br />
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">회원가입</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">Cosen
						회원</a> <i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">로그인</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div style="width: 820px; padding: 30px 30px 30px 150px; height: 800px; background-color: white;">

					<form action="registerComplete.jsp" name="joinFrm" method="post">

						<table>
							<colgroup>
								<col width="100px" />
								<col />
							</colgroup>
							<tr>
								<th class="table-th">이름</th>
								<td class="table-td"><label name="name" id="name"><%=name %></label></td>
							</tr>
							<tr>
								<th class="table-th">홈페이지&lowast;</th>
								<td class="table-td"><span class="spanPass">비밀번호</span><span><input
									 id="pwweb" name="pwweb" value="" type="text" /></span><span class="discription"> ※영문 및 숫자를 조합한
										10자리 이상의 비밀번호</span><br /> <span class="spanPass">비밀번호 확인</span><span><input
									id="pwweb2" name="pwweb2" value=""type="text" onblur="pwwebCheck()" /></span><br />
									
									<ul>
										<li>CoSen 홈페이지 및 앱에서 사용하는 로그인 비밀번호 입니다.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">현장발매&lowast;</th>
								<td class="table-td"><span class="spanPass">비밀번호</span><span><input
									id="pwticketing" name="pwticketing" placeholder="00000" value="" type="text" /></span><span class="discription"> ※숫자 5자리 비밀번호</span><br />
									<span class="spanPass">비밀번호 확인</span><span><input
								 	id="pwticketing2" placeholder="00000" name="pwticketing2" value="" type="text" onblur="pwticketingCheck()" /></span><br />
									<ul>
										<li>자동발매기 및 역 창구에서 사용하는 현장발매 비밀번호입니다.</li>
										<li>역에서 발권하고자 하는 고객님은 해당 비밀번호 5자리를 알고 가셔야 합니다.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">생년월일&lowast;</th>
								<td class="table-td"><label name="birth" id="birth"><%=birth %></label><input type="hidden" name="bi"> </td>
							</tr>
							<tr>
								<th class="table-th">성별&lowast;</th>
								<td class="table-td"><label name="gender" id="gender"><%=gender %></label></td>
							</tr>
							<tr>
								<th class="table-th">이메일&lowast;</th>
								<td class="table-td"><span><input id="email" name="email" type="text" size="37" /></span>
								<button><a href="javascript:emailCertify()">이메일 인증</a></button>
									<ul>
										<li>이메일 인증을 받으시면 코센트레인 홈페이지 및 앱에서 이메일로 로그인할실 수 있습니다.</li>
										<li>이메일을 등록하시면 예약내역, 포인트내역, 철도소식 등을 제공받으실 수 있습니다.</li>
										<li>이메일 변경 시 인증을 통해서면 변경이 가능합니다.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">이메일 수신여부&lowast;</th>
								<td class="table-td"><input id="emailreceivable1" value="" name="emailreceivable1" type="radio" onclick="emailReceive('1')" /> 예 &nbsp;&nbsp; <input
								id="emailreceivable2" name="emailreceivable2" value=""	type="radio" onclick="emailReceive('2')"/> 아니오
								 <input type="hidden" name="emailreceivable" id="emailreceivable" value="">
 								</td>
							</tr>
							<tr>
								<th class="table-th">자택전화</th>
								<td class="table-td"><input type="text" id="tel" name="tel" value=""/></td>
								
							</tr>
							<tr>
								<th class="table-th">휴대전화&lowast;</th>
								<td class="table-td">
								 <label id="phone" name="phone"><%=phone %></label>
									<button> <a href="javascript:phoneCertify()">휴대전화 인증</a></button>
									<ul>
										<li>휴대전화번호를 등록하시면 코센트레인 홈페이지 및 앱에서 전화번호로 로그인할 수 있습니다.</li>
										<li>휴대전화번호 변경 시 인증을 통해서만 변경이 가능합니다.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">주소&lowast;</th>
								<td class="table-td"><input id="zip" value="" name="zip" type="text" size="10" />
									 <button> <a href="javascript:zipCodeSearch()">검색</a> </button>
									<br /> <input type="text" id="addr1" name="addr1" value="" size="40" /> <input type="text"
								 id="addr2" name="addr2" size="40" value="" style="margin-left: 0;" onblur="addresssum()" />
								 <input type="hidden" id="addr" name="addr" value=""> <input type="hidden" id="addr3" name="addr3" value=""></td>
							</tr>
						</table>
						<div style="text-align: center;">
							<input type="button" value="확인" onclick="memberSubmit()"/> <input type="button"
								value="취소" onclick="memberSubmit2()"/>
						</div>
					</form>






				</div>
				<!-- end -->
			</div>

		</div>

		<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		<!-- 수정 부분 -->
	</div>

	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>
  <script type="text/javascript">
  function zipCodeSearch(){
	  window.open("zipCode.jsp", "address",
		"left=800,top=400,width=400,height=400");
	  
	  
  }
  function pwticketingCheck(){
	  var obj1= document.getElementById("pwticketing");
	  var obj2= document.getElementById("pwticketing2");
		if(obj1.value==obj2.value){
			alert('비밀번호가 같습니다.')
		}else{
			alert('비밀번호가 다릅니다.')
		} 
	  //196
  }
  
  function pwwebCheck(){
  var obj1= document.getElementById("pwweb");
  var obj2= document.getElementById("pwweb2");
	if(obj1.value==obj2.value){
		alert('비밀번호가 같습니다.')
	}else{
		alert('비밀번호가 다릅니다.')
	} 
   
  }
  function addresssum() {
		var obj = document.joinFrm;
		obj.addr.value=obj.zip.value+' '+obj.addr1.value+' '+obj.addr2.value;

		/* obj.address.value = obj.zip1.value + '-' + obj.zip2.value + '/'
				+ obj.address1.value + ' ' + obj.address2.value + '#'
				+ obj.address3.value; */
	}

  function emailReceive(v){
	  var obj = document.joinFrm;
		if(v==1){
			obj.emailreceivable.value='Y';
		}else{
			obj.emailreceivable.value='N';
		}
	  
  }
  function phoneCertify(){
	  window.open("phoneCerify.jsp", "phone",
			"left=800,top=400,width=400,height=400");
  }
  function emailCertify(){
	  window.open("emailCerify.jsp", "email",
			"left=800,top=400,width=400,height=400");
  }
  function memberSubmit(){
	  obj = document.joinFrm;
	  obj.submit();
  }
 function memberSubmit2(){
	  location.href="/web/view/container/container.jsp";
  }
  </script>
</body>

</html>
