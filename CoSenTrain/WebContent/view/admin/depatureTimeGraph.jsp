<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- Styles -->
<style>
#chartdiv1 {
  width: 100%;
  height: 500px;
}													
</style>

<script>

var loaddata1;

function getnewdata1(){
   $.ajax({
      url : "/web/view/admin/departureTimeGraphJson.jsp",
      async : false,
      dataType : "json",
      success : function(data1) {
         loaddata1 = data1;
      }
   });   
   return loaddata1;
}
var chart = AmCharts.makeChart("chartdiv1", {
    "theme": "light",
    "type": "serial",
    "startDuration": 2,
    "dataProvider": getnewdata1(),
    "valueAxes": [{
        "position": "left",
        "axisAlpha":0,
        "gridAlpha":0
    }],
    "graphs": [{
        "balloonText": "[[category]]: <b>[[value]]</b>",
        "colorField": "color",
        "fillAlphas": 0.85,
        "lineAlpha": 0.1,
        "type": "column",
        "topRadius":1,
        "valueField": "visits"
    }],
    "depth3D": 40,
	"angle": 30,
    "chartCursor": {
        "categoryBalloonEnabled": false,
        "cursorAlpha": 0,
        "zoomable": false
    },
    "categoryField": "country",
    "categoryAxis": {
        "gridPosition": "start",
        "axisAlpha":0,
        "gridAlpha":0

    },
    "export": {
    	"enabled": true
     }

}, 0);
</script>

<div id="chartdiv1"></div>
