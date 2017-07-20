<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>trainSchedule</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>


</head>
<body>




<!-- Progress Bar -->
<div style="width:100%" id="topProg">
	<div class="w3-light-grey">
		<div class="w3-red" style="height:3px;width:100%" id="progBar"></div>
	</div>
</div>






<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
<jsp:include page="/view/admin/navigation.jsp"></jsp:include>









<div class="container">
	<div class="form-group col-xs-12">
		<label class="control-label col-sm-2" for="baseDate">조회할 날짜 : </label>
		<div class="col-sm-10">
			<input type="date" class="form-control" id="baseDate"  />
		</div>
	</div>
	
	<div id="rsFail"></div>
	
	<form class="form col-xs-12" name="frm" action="#" method="post">
		<div class="form-group">
			<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
				<tr class="info">
					<th title="trainNo">열차번호</th>
					<th title="src">출발지</th>
					<th title="dest">도착지</th>
					<th title="departureTime">출발시간</th>
					<th title="arrivalTime">도착시간</th>
				</tr>
			</table>
			<ul class="pager">
				<li class="previous"><a href="javascript:appendMinus()" class="btn btn-lg"><span class="glyphicon glyphicon-minus"></span></a></li>
				<li class="next"><a href="javascript:appendPlus()" class="btn btn-lg"><span class="glyphicon glyphicon-plus"></span></a></li>
			</ul>
		</div>
		<input class="hidden" type="submit"  />
	</form>
	<div class="form-group  col-xs-12">
		<label class="control-label col-sm-2" for="saveDate">저장할 날짜 : </label>
		<div class="col-sm-10">
			<input type="date" class="form-control" id="saveDate"  />
		</div>
	</div>
	<div class="form-group  col-xs-12">
		<div class="btn-group btn-group-justified" data-toggle="buttons-radio">
			<div class="btn-group">
				<button type="button" class="btn btn-md btn-info disabled" title="saveSchedule"> <span class="glyphicon glyphicon-ok"></span> 선택 날짜 저장</button>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-md btn-default" title="flushSchedule"> <span class="glyphicon glyphicon-remove"></span> 전체 내용 비우기</button>
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
var optionHTML = '';
function setOptionHTML(rs) {
	if(rs != null) {
		for (var i = 0; i < rs.length; i++) {
			optionHTML += '<option value="'+rs[i].stationNo+'">'+rs[i].name+'</option>';
		}
	}
}

var appendCnt = 0;
function appendPlus() {
	var eles = '';
	var curCnt = appendCnt++;
	eles += '<tr class="appendCnt'+curCnt+'" >';
	eles += '<td><input type="text" name="trainNo'+curCnt+'" placeholder="trainNo" class="form-control" required="required" /></td>';
	eles += '<td><select type="text" name="src'+curCnt+'" placeholder="src" class="form-control" required="required" >'+optionHTML+'</select></td>';
	eles += '<td><select type="text" name="dest'+curCnt+'" placeholder="dest" class="form-control" required="required" >'+optionHTML+'</select></td>';
	eles += '<td><input type="datetime-local" name="departureTime'+curCnt+'" class="form-control" required="required" /></td>'
	eles += '<td><input type="datetime-local" name="arrivalTime'+curCnt+'" class="form-control" required="required" /></td>';
	eles += '</tr>';
	$('table').html($('table').html() + eles);
	$('table').find('.appendCnt'+curCnt).find('select[name="src"]').find('option[value="1"]').prop("selected", true);
	$('table').find('.appendCnt'+curCnt).find('select[name="src"]').find('option[value="1"]').attr("selected", "selected");
	$('table').find('.appendCnt'+curCnt).find('select[name="dest"]').find('option[value="2"]').prop("selected", true);
	$('table').find('.appendCnt'+curCnt).find('select[name="dest"]').find('option[value="2"]').attr("selected", "selected");
}
function appendMinus() {
	$('tr').remove('.appendCnt'+(--appendCnt));
}
function removeAllData() {
	while(appendCnt > 0) {
		appendMinus();
	}
}

function alertFail(msg) {
	var alertFail = '<div class="alert alert-danger col-xs-12"><strong> ! </strong> ' + msg + '</div>';
	$('#rsFail').html(alertFail);
	setTimeout(function() {
		$('#rsFail .alert').slideUp(1000);
	}, 1000);	
}

function selectBase(rs) {
	if(rs.size == 0) {
		alertFail('앗, 조회된 데이터가 없습니다.');
		removeAllData();
		appendPlus()
	} else {
		removeAllData();

		$('#topProg').show();
		$("body").css("cursor", "progress");
		$("body").css("opacity", ".5");
		//DOM Settings
		let size = rs.size;
		setTimeout(function() {
			for(var i = 0; i < size; i++) {
				let cnt = i+1;
				let o = rs.list[i];
				setTimeout(function() {
					var eles = '';
					let curCnt = appendCnt++;
					eles += '<tr class="appendCnt'+curCnt+'" title="' + cnt + '" >';
					eles += '<td><input type="text" name="trainNo'+curCnt+'" placeholder="trainNo" class="form-control" value="' + o.trainNo + '" required="required" /></td>';
					eles += '<td><select type="text" name="src'+curCnt+'" placeholder="src" class="form-control" required="required">'+optionHTML+'</select></td>';
					eles += '<td><select type="text" name="dest'+curCnt+'" placeholder="dest" class="form-control" required="required">'+optionHTML+'</select></td>';
					eles += '<td><input type="datetime-local" name="departureTime'+curCnt+'" class="form-control" value="' + o.departureTime + '" required="required" /></td>'
					eles += '<td><input type="datetime-local" name="arrivalTime'+curCnt+'" class="form-control" value="' + o.arrivalTime + '" required="required" /></td>';
					eles += '</tr>';
					$('table').html($('table').html() + eles);
					$('table').find('.appendCnt'+curCnt).find('select[name="src"]').find('option[value="'+o.src+'"]').prop("selected", true);
					$('table').find('.appendCnt'+curCnt).find('select[name="src"]').find('option[value="'+o.src+'"]').attr("selected", "selected");
					$('table').find('.appendCnt'+curCnt).find('select[name="dest"]').find('option[value="'+o.dest+'"]').prop("selected", true);
					$('table').find('.appendCnt'+curCnt).find('select[name="dest"]').find('option[value="'+o.dest+'"]').attr("selected", "selected");
					
					//Progress Bar
			    	$('#progBar').css('width', parseInt((cnt/size)*100)+'%');
					//done
					if(cnt == (size - 1)) {
						$("body").css("cursor", "default");
						$("body").css("opacity", "1");
						$('#topProg').hide();
					}
				}, 50);
			}
		}, 200);
	}
}

function ajaxy(url, dataType, type, data, job){
	$.ajax({
		url:url,
		dataType:dataType,
		type:type,
		data:data,
		cache:false,
		success:function(rs){
			switch(job) {
			case 'optionHTML':
				setOptionHTML(rs);
				break;
			case 'selectBase':
				selectBase(rs);
				break;
			}
		},error:function(msg){
			alertFail('Error : ' + msg);
		},complete:function() {
			switch(job) {
			case 'optionHTML':
				for(var i = 0; i < 10; i++) setTimeout(appendPlus, 100);
				break;
			}
		}
		
	});
}

$('#baseDate').change(function() {
	if($(this).val() && $(this).val().length == 'YYYY-MM-DD'.length) {		
		var inputDateVal = $(this).val().split('-');
		var inputYYYY = inputDateVal[0];
		var inputMM = inputDateVal[1];
		var inputDD = inputDateVal[2];
		
		var url = 'selectBaseSchedulePro.jsp';
		var dataType = 'JSON';
		var type = 'POST';
		var data = {'baseDate':''+inputYYYY+'.'+inputMM+'.'+inputDD};
		var job = 'selectBase';
		
		ajaxy(url, dataType, type, data, job);
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
$('button[title="saveSchedule"]').click(function() {
	frm.action = 'saveSchedulePro.jsp?saveDate='+$('#saveDate').val()+'&size='+appendCnt;
	$('input[type="submit"]').click();
});
$('button[title="flushSchedule"]').click(function() {
	removeAllData();
	for(var i = 0; i < 10; i++) appendPlus();	//init
});


$(function() {	//init

	$('#topProg').hide();
	
	var url = 'selectStationsPro.jsp';
	var dataType = 'JSON';
	var type = 'GET';
	var data = {};
	var job = 'optionHTML';
	
	ajaxy(url, dataType, type, data, job);
	
});

</script>



</body>
</html>