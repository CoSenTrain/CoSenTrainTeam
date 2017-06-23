<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
  $(function(){
	  $("#click").click(function(){
		 window.open("child1.jsp","child1","width=200,height=200"); 
	  });
  });
</script>
</head>
<body>
   <input type="button" value="Click" id="click">
   <div id="show">Hello</div> 
</body>
</html>