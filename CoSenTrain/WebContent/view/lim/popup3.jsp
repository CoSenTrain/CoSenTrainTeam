<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

 <label>������ȣ�� �Է��ϼ���</label><input type="text" size="30" id="verify" /> <input type="button" value="����" onclick="verify()">

</body>
<script type="text/javascript">
function verify(){
  var obj=document.getElementById("verify");
  if(obj.value==1234){
	  
	  opener.parent.parent.parent.location.href = "/web/view/lim/login2.jsp?page=/view/lim/join2.jsp";
	 
	  
  }else{
	  alert('������ȣ�� ��Ȯ�� �Է����ּ���');
  }	
  
}


</script>
</html>