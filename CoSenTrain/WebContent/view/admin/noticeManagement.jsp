<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>trainSchedule</title>
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
	
<div id="wrapper">
		 
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">�Խ��� ���</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
							<span class="button"><a href="#">����</a></span>
							<span class="button"><a href="#">����</a></span>
							<span class="button"><a href="#">����</a></span>
						</span>
					</div>
					
					<table class="bbsWrite">
						<colgroup>
							<col width="90" />
							<col />
						</colgroup>

						<tbody>
						<tr>
							<th scope="row">�ۼ���</th>
							<td><input type="text" name="" class="inputText" size="30" /></td>
						</tr>
						<tr>
							<th scope="row">����</th>
							<td><input type="text" name="" class="inputText" size="50" /></td>
						</tr>
						<tr>
							<th scope="row">����</th>
							<td class="editer">
								<textarea></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">�̹���÷��</th>
							<td>
							<input type="file" name="" class="inputText" size="50" />
							</td>
						</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>