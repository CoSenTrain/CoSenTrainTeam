<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/web/css/kwon/tkting/popupLookFare.css" rel="stylesheet" type="text/css">
<title>TIME</title>
</head>
<body class="popup-wrapper">

<input type="hidden" id="tType" />
<input type="hidden" id="tNo" />
<input type="hidden" id="srcName" />
<input type="hidden" id="destName" />
<input type="hidden" id="departureTime" />
<input type="hidden" id="arrivalTime" />



<div class="popup-title">
	<font>운임 요금 조회</font>
</div>
<div class="popup-close">
	<i class="fa fa-times" onclick="(function(){window.close();return false;})()"></i>
</div>
<div class="popup-body">
	<h5 id="train"></h5>
	<table id="theTable">
		<colgroup>
			<col>
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
			<col class="wx100">
		</colgroup>
		<tr>
			<th rowspan="2" style="background-color:snow;">구분</th>
			<th colspan="5">특실</th>
			<th colspan="5">일반실</th>
		</tr>
		<tr>
			<th>일반</th>
			<th>어린이</th>
			<th>경로</th>
			<th>장애</th>
			<th>국가유공자</th>
			<th>일반</th>
			<th>어린이</th>
			<th>경로</th>
			<th>장애</th>
			<th>국가유공자</th>
		</tr>
		<tr>
			<th>직통</th>
			<td class="adv-normal">0</td>
			<td class="adv-child">0</td>
			<td class="adv-senior">0</td>
			<td class="adv-disabled">0</td>
			<td class="adv-nNerit">0</td>
			<td class="rgr-normal">0</td>
			<td class="rgr-child">0</td>
			<td class="rgr-senior">0</td>
			<td class="rgr-disabled">0</td>
			<td class="rgr-nNerit">0</td>
		</tr>
		<tr>
			<th>합계</th>
			<td class="adv-normal">0</td>
			<td class="adv-child">0</td>
			<td class="adv-senior">0</td>
			<td class="adv-disabled">0</td>
			<td class="adv-nNerit">0</td>
			<td class="rgr-normal">0</td>
			<td class="rgr-child">0</td>
			<td class="rgr-senior">0</td>
			<td class="rgr-disabled">0</td>
			<td class="rgr-nNerit">0</td>
		</tr>
	</table>
</div>




<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript"  src="/web/js/kwon/ajax/httpRequest.js" charset="UTF-8"></script>
<script charset="UTF-8">

//값 세팅까지 시간을 주어야 함
setTimeout(function() {
	var param_tType = document.getElementById("tType").value;
	var param_tNo = document.getElementById("tNo").value;
	var param_srcName = document.getElementById("srcName").value;
	var param_destName = document.getElementById("destName").value;
	var param_departureTime = document.getElementById("departureTime").value;
	var param_arrivalTime = document.getElementById("arrivalTime").value;
	//var params = {tType:tType, tNo:tNo, srcName:srcName, destName:destName, departureTime:departureTime, arrivalTime:arrivalTime};
	//console.log(params);
	$.ajax({
		url:'popupLookFarePro.jsp',
		dataType:'JSON',
		type:'POST',
		data:{tType:param_tType, tNo:param_tNo, srcName:param_srcName, destName:param_destName, departureTime:param_departureTime, arrivalTime:param_arrivalTime},
		success:function(json) {
			console.log(json);
			for(i in json) {
				var cObjs = document.getElementsByClassName(i);
				for (var j = 0; j < cObjs.length; j++) {
					cObjs[j].innerHTML = json[i];
				}
			}
		}
	});
	/* sendRequest("popupLookFarePro.jsp", params, function(){
		if(httpRequest.readyState == 4 && httpRequest.status == 200) {
			var o = JSON.parse(httpRequest.responseText);
			for(i in o) {
				var cObjs = document.getElementsByClassName(i);
				console.log(cObjs);
				for (var j = 0; j < cObjs.length; j++) {
					cObjs[j].innerHTML = o[i];
				}
			}
		}
	}, 'GET'); */
}, 50);
</script>


</body>
</html>