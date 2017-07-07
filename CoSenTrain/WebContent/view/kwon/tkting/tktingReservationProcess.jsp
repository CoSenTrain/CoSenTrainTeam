<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="dao.kwon.SeatDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="util.kwon.MyDate"%>
<%@page import="util.kwon.Obj"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!SeatDao seatDao = SeatDao.getInstance();%>
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
		
String job = request.getParameter("job");
out.println("job = " + job + "<br />");

out.println("<hr />");	//------------------------------------------------------------------------------

String tType = request.getParameter("tType");
out.println("tType = " + tType + "<br />");
String srcName = request.getParameter("srcName");
out.println("srcName = " + srcName + "<br />");
String destName = request.getParameter("destName");
out.println("destName = " + destName + "<br />");
String dT = request.getParameter("dT");
out.println("dT = " + dT + "<br />");
String aT = request.getParameter("aT");
out.println("aT = " + aT + "<br />");
String personCnt = request.getParameter("personCnt");
out.println("personCnt = " + personCnt + "<br />");
String trainNo = request.getParameter("trainNo");
out.println("trainNo = " + trainNo + "<br />");
		
out.println("<hr />");	//------------------------------------------------------------------------------

//tType, tNo, srcName, destName, dT, aT
//&korDayOfWeek=%EB%AA%A9&src=%EC%88%98%EC%84%9C&dest=%EB%B6%80%EC%82%B0
//Params
String tktingMethod = request.getParameter("tktingMethod");
out.println("tktingMethod = " + tktingMethod + "<br />");
String tripType = request.getParameter("tripType");
out.println("tripType = " + tripType + "<br />");
String adultCnt = request.getParameter("adultCnt");
out.println("adultCnt = " + adultCnt + "<br />");
String childCnt = request.getParameter("childCnt");
out.println("tripType = " + childCnt + "<br />");
String seniorCnt = request.getParameter("seniorCnt");
out.println("seniorCnt = " + seniorCnt + "<br />");
String yyyy = request.getParameter("yyyy");
out.println("yyyy = " + yyyy + "<br />");
String mm = request.getParameter("mm");
out.println("mm = " + mm + "<br />");
String dd = request.getParameter("dd");
out.println("dd = " + dd + "<br />");
String hh = request.getParameter("hh");
out.println("hh = " + hh + "<br />");
String korDayOfWeek = request.getParameter("korDayOfWeek");
out.println("korDayOfWeek = " + korDayOfWeek + "<br />");
String src = request.getParameter("src");
out.println("src = " + src + "<br />");
String dest = request.getParameter("dest");
out.println("dest = " + dest + "<br />");

out.println("<hr />");	//------------------------------------------------------------------------------



//map
Map<String, Object> map = new HashMap<String, Object>();
map.put("tType", tType);
map.put("srcName", srcName);
map.put("destName", destName);
map.put("dT", dT);
map.put("aT", aT);
map.put("trainNo", Integer.valueOf(trainNo));
		
//// DAO   ///////////////////////////////////////////////////////////////////////////////////////////
request.setAttribute("getCarNoList", seatDao.getCarNoList(map));	//첫번째 해당 열차의 칸 번호 조회

////  Dispather   //////////////////////////////////////////////////////////////////////////////////////
request.getRequestDispatcher("/view/kwon/tkting/tktingSeatBooking.jsp").forward(request, response);














//전체 catch
} catch(Exception e) {
	e.printStackTrace();
}
%>



</body>
</html>