<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
 request.setCharacterEncoding("EUC-KR");
%>
</head>
<body>
  <%
    String name= request.getParameter("name");
    String birth = request.getParameter("birth");
    String phone = request.getParameter("phone");
    String gender =request.getParameter("gender");
   request.setAttribute("name", name);
   request.setAttribute("birth", birth);
   request.setAttribute("name", phone);
   request.setAttribute("name", gender);
 
    
  %>

<div style="width:400px; height:400px; border: 1px solid lightgray;">
<div style="width:400px; height:50px;"><img alt="" src="/web/img/lim/join/niceid.JPG"> </div>
 <div style="width:400px; height:20px;   text-align: center; font-size: 14px; font-weight: bold; margin-bottom:20px;"><i class="fa fa-envelope-o"></i> �޴�������Ȯ�� (����) </div>
  <div style="background-color:#f9f9fa;; border:1px solid lightgray; margin: 0 auto; 
  text-align: center; width:370px; height:120px;;"> <div style="margin-top:45px;"> <b>������ȣ</b>  <input type="text" width="100px" height="100px" id="verify" /> </div></div> 
 <div style="text-align: center; color:lightgray; font-size: 13px;">
 <ul>
   <li> 3�� �̳��� ������ȣ(4�ڸ�)�� �Է��� �ֽñ� �ٶ��ϴ�.
 
 </ul> 
   </div>
   
 <div style="padding: 40px;margin-top:50px; margin:0 auto; text-align: center;">
 <button style="margin: 0 auto; color:gray; border:1px solid lightgray;width: 220px; 
 border: 0; border-radius: 0 7px; cursor: pointer; height: 55px; font-family: �������; color:black; font-size: 14px;" value="" onclick="verify()">����</button></div>
 <div style="margin-top:50px;width:400px; height:50px;"><img alt="" src="/web/img/lim/join/nice2.JPG"></div>
</div>
</body>
<script type="text/javascript">
function verify(){
  var obj=document.getElementById("verify");
  if(obj.value==1234){
	  
	 location.replace("/web/view/lim/register2.jsp?page=/view/lim/register3.jsp");
	 
	  
  }else{
	  alert('������ȣ�� ��Ȯ�� �Է����ּ���');
  }	
  
}


</script>
</html>