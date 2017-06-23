<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<div style="width:400px; height:400px; border: 1px solid lightgray;">
<div style="width:400px; height:50px;"><img alt="" src="/web/img/lim/join/niceid.JPG"> </div>
<div style="width:400px; height:20px; text-align: center;"><i style="font-family: 14px; font-weight: bold;  aria-hidden="true"><i class="fa fa-volume-control-phone"></i>  이용 중이신 통신사를 선택하세요</i></div>
<div style="width:400px; height:280px; text-align: center;">
 <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
 <script type="text/javascript">
  $(function(){
	  
  });
</script>
<img alt="" src="/web/img/lim/join/skt.JPG" onclick="lim_verify()">
<img alt="" src="/web/img/lim/join/lg.JPG" onclick="lim_verify()">
<img alt="" src="/web/img/lim/join/kt.JPG" onclick="lim_verify()">
</div>
 
<div style="width:400px; height:50px;"><img alt="" src="/web/img/lim/join/nice2.JPG"></div>
</div>
</body>

<script type="text/javascript">

function close(){
	
	window.parent.opener.self.close(); 
}

function lim_verify(){
       
	location.href="popup2.jsp";
  
}

</script>
</html>