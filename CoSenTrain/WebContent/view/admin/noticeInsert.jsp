
<%@page import="bean.kwon.Users"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>notice</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
 <script type="text/javascript">
  function noticeInsert(){
	 var obj= document.nFrm;
	 if(!obj.title.value||!obj.contents.value||!obj.userno.value){
			alert('입력사항확인!');
			clearCheck(obj);
		  }else{
			  obj.submit();
		  }   
   
  }
 
  function clearCheck(obj){//제약사항 
	   obj.title.value='';
	   obj.contents.value='';
	   obj.focus();
  }
  
  function showCheck(flag){
	  if(flag!=null && flag=='mod'){
		  document.getElementById('val').value='mod';
		  document.getElementById('save').innerHTML='수정';
	  }else{
		  document.getElementById('save').innerHTML='저장';
	  }
  }
 
 </script>

</head>
<body>
	<%
	Users user = (Users)session.getAttribute("user");
  int userno=-1; 	
	
 if(user!=null){
	userno =user.getUserNo();
  System.out.print(userno);
 }
  %>
	
<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>
	
	<div>
	
<div class="container">
	<div class="col-xs-12">
		<div class="well"><h3>게시판 등록</h3></div>
	</div>
	<div class="col-xs-12">
		<div class="btn-group btn-group-justified">
			<a href="noticeInsert()" class="btn btn-primary"> <span class="glyphicon glyphicon-check"></span> 저장</a>
			<a href="#" class="btn btn-primary"> <span class="glyphicon glyphicon-edit"></span> 수정</a>
			<a href="#" class="btn btn-primary"> <span class="glyphicon glyphicon-trash"></span> 삭제</a>
		</div>
	</div>
	<div class=" panel col-xs-12">
		<form action="/web/view/admin/noticeInsert2.jsp" method="post" name="nFrm" enctype="multipart/form-data">
			<input type="hidden" name="userno" id="userno" value="<%=userno%>"/>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">제목 : </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="userno" id="userno" placeholder="Enter Title" required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">내용 : </label>
				<div class="col-sm-10">
					<textarea  class="form-control" rows="5" name="contents" id="contents" placeholder="Enter Contents" required="required" draggable="true"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">내용 : </label>
				<div class="col-sm-10">
					<input type="file" class="form-control" name="file" id="file" required="required">
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>