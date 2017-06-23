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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">ȸ������</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">Cosen
						ȸ��</a> <i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">�α���</a>
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
								<th class="table-th">�̸�</th>
								<td class="table-td"><label name="name" id="name"><%=name %></label></td>
							</tr>
							<tr>
								<th class="table-th">Ȩ������&lowast;</th>
								<td class="table-td"><span class="spanPass">��й�ȣ</span><span><input
									 id="pwweb" name="pwweb" value="" type="text" /></span><span class="discription"> �ؿ��� �� ���ڸ� ������
										10�ڸ� �̻��� ��й�ȣ</span><br /> <span class="spanPass">��й�ȣ Ȯ��</span><span><input
									id="pwweb2" name="pwweb2" value=""type="text" onblur="pwwebCheck()" /></span><br />
									
									<ul>
										<li>CoSen Ȩ������ �� �ۿ��� ����ϴ� �α��� ��й�ȣ �Դϴ�.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">����߸�&lowast;</th>
								<td class="table-td"><span class="spanPass">��й�ȣ</span><span><input
									id="pwticketing" name="pwticketing" placeholder="00000" value="" type="text" /></span><span class="discription"> �ؼ��� 5�ڸ� ��й�ȣ</span><br />
									<span class="spanPass">��й�ȣ Ȯ��</span><span><input
								 	id="pwticketing2" placeholder="00000" name="pwticketing2" value="" type="text" onblur="pwticketingCheck()" /></span><br />
									<ul>
										<li>�ڵ��߸ű� �� �� â������ ����ϴ� ����߸� ��й�ȣ�Դϴ�.</li>
										<li>������ �߱��ϰ��� �ϴ� ������ �ش� ��й�ȣ 5�ڸ��� �˰� ���ž� �մϴ�.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">�������&lowast;</th>
								<td class="table-td"><label name="birth" id="birth"><%=birth %></label><input type="hidden" name="bi"> </td>
							</tr>
							<tr>
								<th class="table-th">����&lowast;</th>
								<td class="table-td"><label name="gender" id="gender"><%=gender %></label></td>
							</tr>
							<tr>
								<th class="table-th">�̸���&lowast;</th>
								<td class="table-td"><span><input id="email" name="email" type="text" size="37" /></span>
								<button><a href="javascript:emailCertify()">�̸��� ����</a></button>
									<ul>
										<li>�̸��� ������ �����ø� �ڼ�Ʈ���� Ȩ������ �� �ۿ��� �̸��Ϸ� �α����ҽ� �� �ֽ��ϴ�.</li>
										<li>�̸����� ����Ͻø� ���೻��, ����Ʈ����, ö���ҽ� ���� ���������� �� �ֽ��ϴ�.</li>
										<li>�̸��� ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">�̸��� ���ſ���&lowast;</th>
								<td class="table-td"><input id="emailreceivable1" value="" name="emailreceivable1" type="radio" onclick="emailReceive('1')" /> �� &nbsp;&nbsp; <input
								id="emailreceivable2" name="emailreceivable2" value=""	type="radio" onclick="emailReceive('2')"/> �ƴϿ�
								 <input type="hidden" name="emailreceivable" id="emailreceivable" value="">
 								</td>
							</tr>
							<tr>
								<th class="table-th">������ȭ</th>
								<td class="table-td"><input type="text" id="tel" name="tel" value=""/></td>
								
							</tr>
							<tr>
								<th class="table-th">�޴���ȭ&lowast;</th>
								<td class="table-td">
								 <label id="phone" name="phone"><%=phone %></label>
									<button> <a href="javascript:phoneCertify()">�޴���ȭ ����</a></button>
									<ul>
										<li>�޴���ȭ��ȣ�� ����Ͻø� �ڼ�Ʈ���� Ȩ������ �� �ۿ��� ��ȭ��ȣ�� �α����� �� �ֽ��ϴ�.</li>
										<li>�޴���ȭ��ȣ ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
									</ul></td>
							</tr>
							<tr>
								<th class="table-th">�ּ�&lowast;</th>
								<td class="table-td"><input id="zip" value="" name="zip" type="text" size="10" />
									 <button> <a href="javascript:zipCodeSearch()">�˻�</a> </button>
									<br /> <input type="text" id="addr1" name="addr1" value="" size="40" /> <input type="text"
								 id="addr2" name="addr2" size="40" value="" style="margin-left: 0;" onblur="addresssum()" />
								 <input type="hidden" id="addr" name="addr" value=""> <input type="hidden" id="addr3" name="addr3" value=""></td>
							</tr>
						</table>
						<div style="text-align: center;">
							<input type="button" value="Ȯ��" onclick="memberSubmit()"/> <input type="button"
								value="���" onclick="memberSubmit2()"/>
						</div>
					</form>






				</div>
				<!-- end -->
			</div>

		</div>

		<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		<!-- ���� �κ� -->
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
			alert('��й�ȣ�� �����ϴ�.')
		}else{
			alert('��й�ȣ�� �ٸ��ϴ�.')
		} 
	  //196
  }
  
  function pwwebCheck(){
  var obj1= document.getElementById("pwweb");
  var obj2= document.getElementById("pwweb2");
	if(obj1.value==obj2.value){
		alert('��й�ȣ�� �����ϴ�.')
	}else{
		alert('��й�ȣ�� �ٸ��ϴ�.')
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
