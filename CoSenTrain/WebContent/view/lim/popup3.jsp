<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head><script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
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
   
   application.setAttribute("name", name); 
   application.setAttribute("birth", birth); 
   application.setAttribute("phone", phone); 
   application.setAttribute("gender", gender); 
   
   System.out.println(name);
   System.out.println(birth);
   System.out.println(phone);
   System.out.println(gender);
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
 <button id="change" style="margin:  0 auto; color:gray; border:1px solid lightgray;width: 220px; 
 border: 0; border-radius: 0 7px; cursor: pointer; height: 55px; font-family: �������; color:black; font-size: 14px;" value="" >����</button></div>
 <div style="margin-top:50px;width:400px; height:50px;"><img alt="" src="/web/img/lim/join/nice2.JPG"></div>
</div>
</body>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
 
<script type="text/javascript">
var openWin;
$(function(){
	
	 
	
	
	 $("#change").click(function(){
		 
		if($("#verify").val()==1234){
			alert(1234);
			 $.ajax({
				 url:'/web/view/lim/registerInsert.jsp',
				 dataType:'text',
				 success:function(v){
					//("div").html(v); 
					 $("#dv",opener.document).html(1);		 
					 $("#dv",opener.document).html(v);
					  self.close(); 
				 }
			  });
			
			
			
	   
	    
		}else{
			alert("������ȣ�� Ʋ�Ƚ��ϴ�.");
		}
		 
	 })
	 
});
</script>


<script type="text/javascript">
function resize_window(){
	 window.resizeTo(1700,800);
	 }
function verify(){
	 
  var obj=document.getElementById("verify");
  if(obj.value==1234){
	  resize_window(); 
	  
	   
	  location.href="/web/view/lim/register3.jsp";
	 
	  
  }else{
	  alert('������ȣ�� ��Ȯ�� �Է����ּ���');
  }	  
  
}


</script>
</html>