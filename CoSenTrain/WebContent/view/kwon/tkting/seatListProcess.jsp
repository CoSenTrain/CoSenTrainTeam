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
<%
try {	//전체 try	
request.setCharacterEncoding("EUC-KR");
		
		
//params
String tType = request.getParameter("tType");
tType = (Obj.isStrNull(tType) ? "" : tType.trim().toLowerCase());
String srcName = request.getParameter("srcName");
srcName = (Obj.isStrNull(srcName) ? "" : srcName);
String destName = request.getParameter("destName");
destName = (Obj.isStrNull(destName) ? "" : destName);
String dT = request.getParameter("dT");
dT = (Obj.isStrNull(dT) ? "" : dT);
String aT = request.getParameter("aT");
aT = (Obj.isStrNull(aT) ? "" : aT);
String trainNo = request.getParameter("trainNo");
trainNo = (Obj.isStrNull(trainNo) ? "-1" : trainNo.trim());
String carNo = request.getParameter("carNo");
carNo = (Obj.isStrNull(carNo) ? "-1" : carNo.trim());

//map
Map<String, Object> map = new HashMap<String, Object>();
map.put("tType", tType);
map.put("srcName", srcName);
map.put("destName", destName);
map.put("dT", dT);
map.put("aT", aT);
map.put("trainNo", Integer.valueOf(trainNo));
map.put("carNo", Integer.valueOf(carNo));
		
////   DAO   ///////////////////////////////////////////////////////////////////////////////////////////

//전체 좌석 정보들 + 해당 칸의 예매된 티켓 정보들
out.println("{" + "\"seatList\":" + seatDao.getSeatList(map) + "," + "\"bookedSeats\":" + seatDao.getBookedSeats(map) + "}");


////  Dispather   //////////////////////////////////////////////////////////////////////////////////////
//request.getRequestDispatcher("/view/kwon/tkting/tktingSeatBooking.jsp").forward(request, response);














//전체 catch
} catch(Exception e) {
	e.printStackTrace();
}
%>