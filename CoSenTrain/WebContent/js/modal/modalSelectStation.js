/**
 * 
 */


var settingSttnTarget = "";
var selSttnName = "";

// Get the modal
var svgSeoulAtModal = document.getElementById("seoulAtModal");
var svgDaejunAtModal = document.getElementById("daejunAtModal");
var svgDaeguAtModal = document.getElementById("daeguAtModal");
var svgUlsanAtModal = document.getElementById("ulsanAtModal");
var svgBusanAtModal = document.getElementById("busanAtModal");

// Get the button that opens the modal
var selFrmStationA = document.getElementsByClassName("sel-form-station")[0];
var selFrmStationB = document.getElementsByClassName("sel-form-station")[1];

var sectnnSttnNmAtModal = document.getElementById("stationNameAtModal");
var selectStationModal = document.getElementById("selectStationModal");


// Get the <span> element that closes the modal
var selectStationClose = document.getElementById("selectStationClose");

// When the user clicks the button, open the modal 
function theHovers() {
	selectStationModal.style.display = "block";
		
	svgSeoulAtModal.onmouseover = function() {
		sectnnSttnNmAtModal.innerText = "수 서 역";
		selSttnName = "수서";
	}
	svgDaejunAtModal.onmouseover = function() {
		sectnnSttnNmAtModal.innerText = "대 전 역";
		selSttnName = "대전";
	}
	svgDaeguAtModal.onmouseover = function() {
		sectnnSttnNmAtModal.innerText = "동 대 구 역";
		selSttnName = "동대구";
	}
	svgUlsanAtModal.onmouseover = function() {
		sectnnSttnNmAtModal.innerText = "울 산 역";
		selSttnName = "울산";
	}
	svgBusanAtModal.onmouseover = function() {
		sectnnSttnNmAtModal.innerText = "부 산 역";
		selSttnName = "부산";
	}
}

function checkClose() {
	if(selSttnName == "") {
		//미완성: selSttnName는 "destStationName"이냐가 아니라 한글이다 ("수서" 등)
	} else if(settingSttnTarget == "destStationName" && selSttnName == document.getElementById("srcStationName").value) {
		alert("선택하신 역은 출발지와 같습니다.");
		return;
	} else if(settingSttnTarget == "srcStationName" && selSttnName == document.getElementById("destStationName").value) {
		alert("선택하신 역은 도착지와 같습니다.");
		return;
	} else {
		selectStationModal.style.display = "none";
	}
}

function theActives() {
	
	
	svgSeoulAtModal.onclick = function() {
		document.getElementById(settingSttnTarget).value = selSttnName;
		checkClose();
	}
	svgDaejunAtModal.onclick = function() {
		document.getElementById(settingSttnTarget).value = selSttnName;
		checkClose();
	}
	svgDaeguAtModal.onclick = function() {
		document.getElementById(settingSttnTarget).value = selSttnName;
		checkClose();
	}
	svgUlsanAtModal.onclick = function() {
		document.getElementById(settingSttnTarget).value = selSttnName;
		checkClose();
	}
	svgBusanAtModal.onclick = function() {
		document.getElementById(settingSttnTarget).value = selSttnName;
		checkClose();
	}
}

selFrmStationA.onclick = function() {
	settingSttnTarget = "srcStationName";
	theHovers();
	theActives();
}

selFrmStationB.onclick = function() {
	settingSttnTarget = "destStationName";
	theHovers();
	theActives();
}



// When the user clicks on <span> (x), close the modal
selectStationClose.onclick = function() {
	selectStationModal.style.display = "none";
}


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
	if (event.target == selectStationModal) {
		selectStationModal.style.display = "none";
	}
}
