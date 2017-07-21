<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>station</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>

<script>

</script>
</head>
<body>
	<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>
	
	<div class="container">
		<div class="well"><h3>StationManagement <small>
		
		
		( 역추가 예정이 아직 없습니다. )</small></h3></div>
		  <img alt="" src="/web/img/station/suseo.jpg">
		  <br>
		  <br>
		<form class="form col-xs-12" name="frm" action="#" method="post">
			<div class="input-group input-group-lg">
				<input type="text" class="form-control" placeholder="Search" required="required">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
