/**
 * 
 */

var whatBrowserEngine = "";
var theUserAgentStr = window.navigator.userAgent;
if(theUserAgentStr.indexOf('MSIE') > 0 || theUserAgentStr.indexOf('Trident') > 0)
	whatBrowserEngine = "IE";
else if(theUserAgentStr.indexOf('Opera') > 0 || theUserAgentStr.indexOf('OPR') > 0)
	whatBrowserEngine = "Opera";
else if(theUserAgentStr.indexOf('Firefix') > 0)
	whatBrowserEngine = "Firefox";
else if(theUserAgentStr.indexOf('Safari') > 0) {
	if(theUserAgentStr.indexOf('Chrome') > 0)
		whatBrowserEngine = "Chrome";
	else
		whatBrowserEngine = "Safari";
}
if(whatBrowserEngine != "Chrome") {
	alert("!앗, 저희는 Chrome 환경에서만 \n서비스를 지원합니다.");
	window.close();
}