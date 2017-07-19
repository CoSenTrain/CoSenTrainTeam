<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<!-- Resources -->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
      url : "/CoSenTrain/view/admin/arriveStationGraphJson.jsp",
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

<body>
<div id="chartdiv4"></div>
</body>
</html>