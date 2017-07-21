<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- Styles -->
<style>
#chartdiv3 {
  width: 100%;
  height: 500px;
}													
</style>

<script>

var loaddata3;

function getnewdata3(){
   $.ajax({
      url : "/web/view/admin/depatureStationGraphJson.jsp",
      async : false,
      dataType : "json",
      success : function(data3) {
         loaddata3 = data3;
      }
   });   
   return loaddata3;
}
var chart = AmCharts.makeChart( "chartdiv3", {
	  "type": "pie",
	  "theme": "light",
	  "dataProvider": getnewdata3(),
	  "valueField": "litres",
	  "titleField": "country",
	   "balloon":{
	   "fixedPosition":true
	  },
	  "export": {
	    "enabled": true
	  }
	} );
</script>

<div id="chartdiv3"></div>
