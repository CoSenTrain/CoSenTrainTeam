
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
			alert('�Է»���Ȯ��!');
			clearCheck(obj);
		  }else{
			  obj.submit();
		  }   
   
  }
 
  function clearCheck(obj){//������� 
	   obj.title.value='';
	   obj.contents.value='';
	   obj.focus();
  }
  
  function showCheck(flag){
	  if(flag!=null && flag=='mod'){
		  document.getElementById('val').value='mod';
		  document.getElementById('save').innerHTML='����';
	  }else{
		  document.getElementById('save').innerHTML='����';
	  }
  }
 
 </script>

</head>
<body>
	<%
	Users user = (Users)session.getAttribute("user");
  int userno =user.getUserNo();
  System.out.print(userno);
	%>
	
<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>
	
	<div>
	
<div >
		 
		<div>
			<div>
				<div>
					<h1>�Խ��� ���</h1>
					<div>
						<span>
							<span><a onclick="noticeInsert()">����</a></span>
							<span><a href="#">����</a></span>
							<span><a href="#">����</a></span>
						</span>
					</div>
					<form action="/web/view/admin/noticeInsert2.jsp" method="post" name="nFrm" enctype="multipart/form-data">
					<table >
						<colgroup>
							<col width="90" />
							<col />
						</colgroup>

						<tbody>
					 	 
						
						 
						<tr>
							<th >����</th>
							<td><input type="text" name="title" id="title" value=""  size="50" />
							         <input type="hidden" name="userno" id="userno" value="<%=userno%>"/>
							</td>
					
						</tr>
						<tr>
							<th >����</th>
							<td >
								<textarea name="contents" id="contents"></textarea>
							</td>
						</tr>
						<tr>
							<th >�̹���÷��</th>
							<td>
							<input type="file" name="file"  size="50" />
							</td>
						</tr>
						</tbody>
					</table>
                   </form>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>