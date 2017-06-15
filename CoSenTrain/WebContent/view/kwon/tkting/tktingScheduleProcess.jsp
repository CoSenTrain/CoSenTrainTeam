<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="dao.kwon.TicketingDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="util.kwon.MyDate"%>
<%@page import="util.kwon.Obj"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<%
try {	//전체 try	





request.setCharacterEncoding("EUC-KR");
Map<String, Object> map = new HashMap<String, Object>();

String tktingMethod = request.getParameter("tktingMethod");
out.println("tktingMethod = " + tktingMethod + "<br /><hr />");

String src = request.getParameter("src");
out.println("src = " + src + "<br />");
String dest = request.getParameter("dest");
out.println("dest = " + dest + "<br /><hr />");
String chosenDate = request.getParameter("chosenDate");
out.println("chosenDate = " + chosenDate + "<br />");
String timeAfter = request.getParameter("timeAfter");
out.println("timeAfter = " + timeAfter + "<br />");
String tripType = request.getParameter("tripType");
out.println("tripType = " + tripType + "<br />");

out.println("<hr />");	//------------------------------------------------------------------------------

String adultCnt = new String();
String childCnt = new String();
String seniorCnt = new String();
if(!Obj.isStrNull(tktingMethod) && tktingMethod.equals("oneTk")) {
	adultCnt = request.getParameter("adultCntForOne");
	childCnt = request.getParameter("childCntForOne");
	seniorCnt = request.getParameter("seniorCntForOne");
} else if(!Obj.isStrNull(tktingMethod) && tktingMethod.equals("manyTk")) {
	adultCnt = request.getParameter("adultCntForMany");
	childCnt = request.getParameter("childCntForMany");
	seniorCnt = request.getParameter("seniorCntForMany");
}
out.println("adultCnt = " + adultCnt + "<br />");
out.println("childCnt = " + childCnt + "<br />");
out.println("seniorCnt = " + seniorCnt + "<br />");

out.println("<hr />");	//------------------------------------------------------------------------------


String carType = request.getParameter("carType");
out.println("carType = " + carType + "<br />");
String seatCate = request.getParameter("seatCate");
out.println("seatCate = " + seatCate + "<br />");

out.println("<hr />");	//------------------------------------------------------------------------------


map.put("tktingMethod", tktingMethod);
map.put("tripType", tripType);
map.put("chosenDate", chosenDate);
map.put("hh", timeAfter);
map.put("src", src);
map.put("dest", dest);
map.put("carType", carType);
map.put("isAisleSeat", seatCate);

////   DAO   ///////////////////////////////////////////////////////////////////////////////////////////
List<TktingSchedule> selScheduleList = TicketingDao.selectSchedule(map);	//DAO
request.setAttribute("tripType", tripType);
request.setAttribute("adultCnt", adultCnt);
request.setAttribute("childCnt", childCnt);
request.setAttribute("seniorCnt", seniorCnt);
request.setAttribute("yyyy", chosenDate.substring(0, 4));
request.setAttribute("mm", chosenDate.substring(5, 7));
request.setAttribute("dd", chosenDate.substring(8));
request.setAttribute("src", src);
request.setAttribute("dest", dest);
request.setAttribute("hh", timeAfter);
request.setAttribute("selScheduleList", selScheduleList);

////  Dispather   //////////////////////////////////////////////////////////////////////////////////////
request.getRequestDispatcher("/view/kwon/tkting/tktingScheduleResult.jsp").forward(request, response);














//전체 catch
} catch(Exception e) {
	e.printStackTrace();
}
%>



</body>
</html>