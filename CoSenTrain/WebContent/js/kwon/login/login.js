/**
 * 
 */

function frmRadChange(obj) {
	var rdo = frm.signInWith;
	var v = "";
	for(var i = 0; i < rdo.length; i++) {
		if(rdo[i] == obj) {
			v = obj.value;
			break;
		}
	}
	
	var logName = document.getElementById("logName");
	var logCookieName = document.getElementById("logCookieName");
	
	switch(v) {
	case "userNo":
		logName.innerText = logCookieName.innerText = "회원번호";
		break;
	case "email":
		logName.innerText = logCookieName.innerText = "이메일";
		break;
	case "phone":
		logName.innerText = logCookieName.innerText = "휴대전화번호";
		break;
	}
	logCookieName.innerText += " 저장"
}

document.getElementsByClassName("frm-input-submit")[0].onfocus = function() {
 	if (!frm.logPw.value) {
 		frm.logPw.focus();
	}
}

document.getElementsByClassName("frm-input-cookie")[0].onblur = function() {
 	document.getElementsByClassName("frm-input-submit")[0].focus();
}