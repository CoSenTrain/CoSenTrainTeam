<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
		<jsp:include page="/view/admin/navigation.jsp"></jsp:include>

		<form action="#">
			<div class="container">
				ticketManagement
				<input type="text" id="ticketNo" name="ticketNo">
				<input type="button" value="�˻�">
			</div>
		</form>
</body>
</html>