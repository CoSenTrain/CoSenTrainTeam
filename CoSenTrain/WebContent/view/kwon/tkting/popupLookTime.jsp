<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/web/css/kwon/tkting/popupLookTime.css" rel="stylesheet" type="text/css">
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
	<font>운행 시간 조회</font>
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
		</colgroup>
		<tr>
			<th>역명</th>
			<th>도착시간</th>
			<th>출발시간</th>
			<th>지연시간</th>
		</tr>
		<tr>
			<td>수서</td>
			<td>-</td>
			<td>19:00</td>
			<td>-</td>
		</tr>
		<tr>
			<td>대전</td>
			<td>19:14</td>
			<td>19:15</td>
			<td>-</td>
		</tr>
		<tr>
			<td>부산</td>
			<td>20:14</td>
			<td>-</td>
			<td>-</td>
		</tr>
		<tr>
			<td id="jsText0" colspan="4"></td>
		</tr>
		<tr>
			<td id="jsText1" colspan="4"></td>
		</tr>
		<tr>
			<td id="jsText2" colspan="4"></td>
		</tr>
		<tr>
			<td id="jsText3" colspan="4"></td>
		</tr>
		<tr>
			<td id="jsText4" colspan="4"></td>
		</tr>
	</table>
</div>





<script type="text/javascript"  src="/web/js/kwon/ajax/httpRequest.js" charset="UTF-8"></script>
<script>

//값 세팅까지 시간을 주어야 함
setTimeout(function() {
	var tb = document.getElementById("theTable");
	//alert(tb);
	
	var tType = document.getElementById("tType").value;
	var tNo = document.getElementById("tNo").value;
	var srcName = document.getElementById("srcName").value;
	var destName = document.getElementById("destName").value;
	var departureTime = document.getElementById("departureTime").value;
	var arrivalTime = document.getElementById("arrivalTime").value;
	var params = "tType="+tType+"&tNo="+tNo+"&srcName="+srcName+"&destName="+destName+"&departureTime="+departureTime+"&arrivalTime="+arrivalTime;
	//alert(params);
	sendRequest("popupLookTimePro.jsp", params, function(){
		if(httpRequest.readyState == 4 && httpRequest.status == 200) {
			var rs = JSON.parse(httpRequest.responseText);
			console.log(rs);
			
			for(var i = 0; i < 5; i++) {
				document.getElementById("jsText" + i).innerText = rs[i].station;
				document.getElementById("jsText" + i).innerText += ", " + rs[i].arrival;
				document.getElementById("jsText" + i).innerText += ", " + rs[i].departure;
				document.getElementById("jsText" + i).innerText += ", " + rs[i].delayed;
			}

		}
	}, 'GET');
}, 50);

</script>


</body>
</html>