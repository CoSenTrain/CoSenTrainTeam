/**
 * 
 */


function setTime() {
	var now = new Date();
	
	var yyyy = "" + now.getFullYear();
	var mm   = "" + ((now.getMonth() + 1) < 10 ? "0" + (now.getMonth() + 1) : (now.getMonth() + 1));
	var dd   = "" + (now.getDate() < 10 ? "0" + now.getDate() : now.getDate());
	
	var hh = "" + (now.getHours() < 10 ? "0" + now.getHours() : now.getHours());
	var mi = "" + (now.getMinutes() < 10 ? "0" + now.getMinutes() : now.getMinutes());
	var ss = "" + (now.getSeconds() < 10 ? "0" + now.getSeconds() : now.getSeconds());
	
	
	var yyyymmdd = document.getElementsByClassName("yyyymmdd");
	var hhmiss   = document.getElementsByClassName("hhmiss");
	var yyyymmddhhmiss = document.getElementsByClassName("yyyymmddhhmiss");
	
	for(var i = 0; i < yyyymmdd.length; i++) {
		if(yyyymmdd[i].tagName.toUpperCase() == "INPUT") {
			yyyymmdd[i].value = yyyy + "." + mm + "." + dd;
		} else {
			yyyymmdd[i].innerHTML = yyyy + "." + mm + "." + dd;
		}
	}
	for(var i = 0; i < hhmiss.length; i++) {
		if(hhmiss[i].tagName.toUpperCase() == "INPUT") {
			yyyymmdd[i].value = hh + ":" + mi + ":" + ss;
		} else {
			yyyymmdd[i].innerHTML = hh + ":" + mi + ":" + ss;
		}
	}
	for(var i = 0; i < yyyymmddhhmiss.length; i++) {
		if(yyyymmddhhmiss[i].tagName.toUpperCase() == "INPUT") {
			yyyymmddhhmiss[i].value = yyyy + "/" + mm + "/" + dd + " " + hh + ":" + mi + ":" + ss;
		} else {
			yyyymmddhhmiss[i].innerText = yyyy + "/" + mm + "/" + dd + " " + hh + ":" + mi + ":" + ss;
		}
	}
}
setTime();

function getYYYY() {
	var now = new Date();
	var yyyy = "" + now.getFullYear();
	return yyyy;
}
function getMM() {
	var now = new Date();
	var mm   = "" + ((now.getMonth() + 1) < 10 ? "0" + (now.getMonth() + 1) : (now.getMonth() + 1));
	return mm;
}
function getDD() {
	var now = new Date();
	var dd   = "" + (now.getDate() < 10 ? "0" + now.getDate() : now.getDate());
	return dd;
}
function getHH() {
	var now = new Date();
	var hh = "" + (now.getHours() < 10 ? "0" + now.getHours() : now.getHours());
	return hh;
}
function getMI() {
	var now = new Date();
	var mi = "" + (now.getMinutes() < 10 ? "0" + now.getMinutes() : now.getMinutes());
	return mi;
}
function getSS() {
	var now = new Date();
	var ss = "" + (now.getSeconds() < 10 ? "0" + now.getSeconds() : now.getSeconds());
	return ss;
}

setInterval(function() {
	
	var yyyymmddhhmiss = document.getElementsByClassName("yyyymmddhhmiss");
	
	for(var i = 0; i < yyyymmddhhmiss.length; i++) {
		if(yyyymmddhhmiss[i].tagName.toUpperCase() == "INPUT") {
			yyyymmddhhmiss[i].value = "" +
			+ getYYYY() + "/" + getMM() + "/" + getDD()
			+ " "
			+ getHH() + ":" + getMI() + ":" + getSS();
		} else {
			yyyymmddhhmiss[i].innerText = "" +
			+ getYYYY() + "/" + getMM() + "/" + getDD()
			+ " "
			+ getHH() + ":" + getMI() + ":" + getSS();
		}
	}
}, 1000);