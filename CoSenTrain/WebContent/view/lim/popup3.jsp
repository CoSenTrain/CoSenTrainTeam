<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <%String name= request.getParameter("name");
    String birth = request.getParameter("birth");
    String phone = request.getParameter("phone");
    String gender =request.getParameter("gender");
     System.out.println(name+"1"+birth+"2"+ phone+"3"+gender);
     
    
  %>


 <label>������ȣ�� �Է��ϼ���</label><input type="text" size="30" id="verify" /> <input type="button" value="����" onclick="verify()">

</body>
<script type="text/javascript">
function verify(){
  var obj=document.getElementById("verify");
  if(obj.value==1234){
	  
	 // location.replace("/web/view/lim/login2.jsp?page=/view/lim/join2.jsp");
	 
	  
  }else{
	  alert('������ȣ�� ��Ȯ�� �Է����ּ���');
  }	
  
}


</script>
</html>