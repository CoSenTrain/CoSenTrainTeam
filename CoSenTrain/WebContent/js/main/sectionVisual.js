/**
 * 
 */

var svgSeoul = document.getElementById("seoul");
var svgDaejun = document.getElementById("daejun");
var svgDaegu = document.getElementById("daegu");
var svgUlsan = document.getElementById("ulsan");
var svgBusan = document.getElementById("busan");

var sectionStationName = document.getElementById("stationName");
var sectionStationImg = document.getElementById("stationImg");



svgSeoul.onmouseover = function() {
	sectionStationName.innerText = "수 서 역";
	sectionStationImg.src = "/web/img/station/suseo.jpg";
}
svgDaejun.onmouseover = function() {
	sectionStationName.innerText = "대 전 역";
	sectionStationImg.src = "/web/img/station/daejun.jpg";
}
svgDaegu.onmouseover = function() {
	sectionStationName.innerText = "동 대 구 역";
	sectionStationImg.src = "/web/img/station/daegu.jpg";
}
svgUlsan.onmouseover = function() {
	sectionStationName.innerText = "울 산 역";
	sectionStationImg.src = "/web/img/station/ulsan.jpg";
}
svgBusan.onmouseover = function() {
	sectionStationName.innerText = "부 산 역";
	sectionStationImg.src = "/web/img/station/busan.jpg";
}


