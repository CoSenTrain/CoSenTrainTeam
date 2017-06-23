/**
 * 
 */

function getXmlHttpRequest() {
	if(window.ActiveXObject){
		//alert('IE');
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			alert(e);
		}
	} else if(window.XMLHttpRequest) {
		//alert('타사');
		return new XMLHttpRequest();
	} else {
		return null;
	}
}

var httpRequest = null;

function sendRequest(url, params, callback, method) {
	httpRequest = getXmlHttpRequest();
	var httpMethod = method?method:'GET';
	if(httpMethod!='GET' && httpMethod!='POST') {
		httpMethod = 'GET';
	}
	var httpParams = (httpMethod==null || httpMethod=='')?null:params;
	var httpUrl = url;
	if(httpMethod=='GET' && httpParams!=null) {
		httpUrl = httpUrl+"?"+httpParams;
	}
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	httpRequest.onreadystatechange = callback;
	httpRequest.send(httpMethod=='POST'?httpParams:null);
}

/*
function showView() {
	if(httpRequest.readyState==4 && httpRequest.status==200) {
		document.getElementById("dv").innerHTML = document.getElementById("dv").innerHTML  + httpRequest.responseText;
	}
}

function firstAjax(url, params) {
	//var obj = getXmlHttpRequest();
	//console.log(obj);
	sendRequest(url, params, showView, 'GET');
	console.log(httpRequest);
}
*/