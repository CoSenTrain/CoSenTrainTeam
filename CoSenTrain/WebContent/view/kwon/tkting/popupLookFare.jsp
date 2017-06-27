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
	<font>���� ��� ��ȸ</font>
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
			<th rowspan="2" style="background-color:snow;">����</th>
			<th colspan="5">Ư��</th>
			<th colspan="5">�Ϲݽ�</th>
		</tr>
		<tr>
			<th>�Ϲ�</th>
			<th>���</th>
			<th>���</th>
			<th>���</th>
			<th>����������</th>
			<th>�Ϲ�</th>
			<th>���</th>
			<th>���</th>
			<th>���</th>
			<th>����������</th>
		</tr>
		<tr>
			<th>����</th>
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
			<th>�հ�</th>
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
<script>

//�� ���ñ��� �ð��� �־�� ��
setTimeout(function() {
	var tType = document.getElementById("tType").value;
	var tNo = document.getElementById("tNo").value;
	var srcName = document.getElementById("srcName").value;
	var destName = document.getElementById("destName").value;
	var departureTime = document.getElementById("departureTime").value;
	var arrivalTime = document.getElementById("arrivalTime").value;
	var params = "tType="+tType+"&tNo="+tNo+"&srcName="+srcName+"&destName="+destName+"&departureTime="+departureTime+"&arrivalTime="+arrivalTime;
	//alert(params);
	sendRequest("popupLookFarePro.jsp", params, function(){
		if(httpRequest.readyState == 4 && httpRequest.status == 200) {
			var rs = JSON.parse(httpRequest.responseText);
			console.log(rs);
			alert(rs);
			
			
			
			
			
		}
	}, 'GET');
}, 50);
</script>


</body>
</html>