<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>trainSchedule</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>


</head>
<body>
<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
<jsp:include page="/view/admin/navigation.jsp"></jsp:include>






<div class="container">
	<div class="form-group col-xs-12">
		<label class="control-label col-sm-2" for="baseDate">��ȸ�� ��¥ : </label>
		<div class="col-sm-10">
			<input type="date" class="form-control" id="baseDate"  />
		</div>
	</div>
	
	<div id="rsFail"></div>
	
	<div class="form-group col-xs-12">
		<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
			<tr class="info">
				<th title="trainNo">������ȣ</th>
				<th title="src">�����</th>
				<th title="dest">������</th>
				<th title="departureTime">��߽ð�</th>
				<th title="arrivalTime">�����ð�</th>
			</tr>
			<%
			for(int i = 0; i < 10; i++) {
			%>
			<tr>
				<td><input type="text" value="1" placeholder="trainNo" class="form-control" /></td>
				<td><input type="text" value="����" placeholder="src" class="form-control" /></td>
				<td><input type="text" value="�λ�" placeholder="dest" class="form-control" /></td>
				<td><input type="datetime-local" value="2017-07-20T08:55" class="form-control" /></td>
				<td><input type="datetime-local" value="2017-07-20T08:55" class="form-control" /></td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="5">
				</td>
			</tr>
		</table>
		<ul class="pager">
			<li class="previous"><a href="javascript:appendMinus()" class="btn btn-lg"><span class="glyphicon glyphicon-minus"></span></a></li>
			<li class="next"><a href="javascript:appendPlus()" class="btn btn-lg"><span class="glyphicon glyphicon-plus"></span></a></li>
		</ul>
	</div>
	<div class="form-group  col-xs-12">
		<label class="control-label col-sm-2" for="saveDate">������ ��¥ : </label>
		<div class="col-sm-10">
			<input type="date" class="form-control" id="saveDate"  />
		</div>
	</div>
	<div class="form-group  col-xs-12">
		<div class="btn-group btn-group-justified" data-toggle="buttons-radio">
			<div class="btn-group">
				<button type="button" class="btn btn-md btn-info disabled" title="saveSchedule"> <span class="glyphicon glyphicon-ok"></span> ���� ��¥ ����</button>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-md btn-default" title="flushSchedule"> <span class="glyphicon glyphicon-remove"></span> ��ü ���� ����</button>
			</div>
		</div>
	</div>
</div>


<br />
<br />
<br />
<br />
<br />






<script>
var ajaxy = function(url, dataType, type, data){
	$.ajax({
		url:url,
		dataType:dataType,
		type:type,
		data:data,
		cache:false,
		success:function(rs){
			console.log("AJAX RS>\n" + rs);
		},error:function(msg){
			alert('Error : ' + msg);
		}
		
	});
}

function alertFail() {
	var alertFail = '<div class="alert alert-danger col-xs-12"><strong> ! </strong> ��, ��ȸ�� �����Ͱ� �����ϴ�.</div>';
	$('#rsFail').html(alertFail);
	setTimeout(function() {
		$('#rsFail .alert').slideUp(1000);
	}, 1000);	
}

$('#baseDate').change(function() {
	if($(this).val() && $(this).val().length == 'YYYY-MM-DD'.length) {		
		var inputDateVal = $(this).val().split('-');
		var inputYYYY = inputDateVal[0];
		var inputMM = inputDateVal[1];
		var inputDD = inputDateVal[2];
		
		
	}
});
$('input[type="datetime-local"]').change(function() {
	if($(this).val() && $(this).val().length == 'YYYY-MM-DDTHH:MI'.length) {		
		var inputDateVal = $(this).val().split('T')[0].split('-');
		var inputYYYY = inputDateVal[0];
		var inputMM = inputDateVal[1];
		var inputDD = inputDateVal[2];

		var inputTimeVal = $(this).val().split('T')[1].split(':');
		var inputHH = inputTimeVal[0];
		var inputMI = inputTimeVal[1];
		
		console.log(inputYYYY);
		console.log(inputMM);
		console.log(inputDD);
		console.log(inputHH);
		console.log(inputMI);
		console.log();
	}
});
$('#saveDate').change(function() {
	if($(this).val() && $(this).val().length == 'YYYY-MM-DD'.length) {
		
		$('button[title="saveSchedule"]').removeClass(' disabled');
		
		var inputDateVal = $(this).val().split('-');
		var inputYYYY = inputDateVal[0];
		var inputMM = inputDateVal[1];
		var inputDD = inputDateVal[2];
		
		
	} else {
		$('button[title="saveSchedule"]').addClass(' disabled');
	}
});
$('button[title="flushSchedule"]').click(function() {
	$('#baseDate').val('');
	$('td input').val('');	
});

var appendCnt = 0;
function appendPlus() {
	var eles = '';
	eles += '<tr class="success appendCnt'+(appendCnt++)+'" >';
	eles += '<td><input type="text" placeholder="trainNo" class="form-control" /></td>';
	eles += '<td><input type="text" placeholder="src" class="form-control" /></td>';
	eles += '<td><input type="text" placeholder="dest" class="form-control" /></td>';
	eles += '<td><input type="datetime-local" class="form-control" /></td>'
	eles += '<td><input type="datetime-local" class="form-control" /></td>';
	eles += '</tr>';
	$('table').html($('table').html() + eles);
}
function appendMinus() {
	$('tr').remove('.appendCnt'+(--appendCnt));
}

</script>




</body>
</html>