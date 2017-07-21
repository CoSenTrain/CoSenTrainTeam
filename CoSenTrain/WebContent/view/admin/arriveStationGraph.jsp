<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- Styles -->
<style>
#chartdiv4 {
  width: 100%;
  height: 500px;
}													
</style>

<script>

var loaddata4;

function getnewdata4(){
   $.ajax({
      url : "/web/view/admin/arriveStationGraphJson.jsp",
      async : false,
      dataType : "json",
      success : function(data4) {
         loaddata4 = data4;
      }
   });   
   return loaddata4;
}

var chart = AmCharts.makeChart( "chartdiv4", {
	  "type": "pie",
	  "theme": "light",
	  "dataProvider": getnewdata4(),
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

<div id="chartdiv4"></div>
