/**
 * 
 */


//this event onetk,manytk
function openCity(o, evt, cityName) {
	document.getElementById("tktingMethod").value = cityName;
	
	var tktingMethods = document.getElementsByClassName("tkting-method");
	for (var i = 0; i < tktingMethods.length; i++) {
		tktingMethods[i].innerText = o.innerText;
	}
	
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function showPopupLookTime(tType, tNo, srcName, destName, dT, aT) {
	var wd = 500;
	var ht = 500;
	
	var popupX = (window.screen.width / 2) - (wd / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (ht / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	
	window.name = "parentForm";
	var openWin = window.open('/web/view/kwon/tkting/popupLookTime.jsp', 'childForm', 'status=no, height='+ht+', width='+wd+', left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	
	//팝업의 DOM 객체가 다 만들어질때 까지 조사
	var intervalCnt = 0;
	var interval = setInterval(function() {
		intervalCnt++;
		if(openWin.document.getElementById("train") != null && openWin.document.getElementById("arrivalTime") != null)  {
			//popup init
			clearInterval(interval);
			
			//Title Setting
			openWin.document.getElementById("train").innerText = tType + " " + tNo;
			
			//Hidden Settings
			openWin.document.getElementById("tType").value = tType.toLowerCase();
			openWin.document.getElementById("tNo").value = tNo;
			openWin.document.getElementById("srcName").value = srcName;
			openWin.document.getElementById("destName").value = destName;
			openWin.document.getElementById("departureTime").value = dT;
			openWin.document.getElementById("arrivalTime").value = aT;
			
			return false;
		}
		if(intervalCnt > 200) {			
			clearInterval(interval);
			openWin.alert("네트워크 에러!");
			openWin.close();
			return false;
		}
	}, 10);
}


function showPopupLookFare(tType, tNo, srcName, destName, dT, aT) {
	var wd = 1000;
	var ht = 500;
	
	var popupX = (window.screen.width / 2) - (wd / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (ht / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	
	window.name = "parentForm";
	var openWin = window.open('/web/view/kwon/tkting/popupLookFare.jsp', 'childForm', 'status=no, height='+ht+', width='+wd+', left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	
	//팝업의 DOM 객체가 다 만들어질때 까지 조사
	var intervalCnt = 0;
	var interval = setInterval(function() {
		intervalCnt++;
		if(openWin.document.getElementById("train") != null && openWin.document.getElementById("arrivalTime") != null)  {
			//popup init
			clearInterval(interval);
			
			//Title Setting
			openWin.document.getElementById("train").innerText = tType + " " + tNo;
			
			//Hidden Settings
			openWin.document.getElementById("tType").value = tType.toLowerCase();
			openWin.document.getElementById("tNo").value = tNo;
			openWin.document.getElementById("srcName").value = srcName;
			openWin.document.getElementById("destName").value = destName;
			openWin.document.getElementById("departureTime").value = dT;
			openWin.document.getElementById("arrivalTime").value = aT;
			
			return false;
		}
		if(intervalCnt > 200) {			
			clearInterval(interval);
			openWin.alert("네트워크 에러!");
			openWin.close();
			return false;
		}
	}, 10);
}


//예약 버튼 처리
function reservationCheck(tType, tNo, srcName, destName, dT, aT, trainNo, personCnt, hasNotLoggedIn) {
	tType = tType.toLowerCase();
	
	//한명 이상이고, 로그인도 안되어 있으면!
	if(personCnt > 1 && hasNotLoggedIn) {
		location.href = '/web/view/kwon/login/login.jsp';
	} else {
		paramChainFrm.action = '/web/view/kwon/tkting/tktingReservationProcess.jsp';

		document.getElementById('tType').value = tType;
		document.getElementById('srcName').value = srcName;
		document.getElementById('destName').value = destName;
		document.getElementById('dT').value = dT;
		document.getElementById('aT').value = aT;
		document.getElementById('personCnt').value = personCnt;
		document.getElementById('trainNo').value = trainNo;
		
		paramChainFrm.submit();	
	}
}