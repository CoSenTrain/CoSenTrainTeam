<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="java.util.List"%>
<%@page import="util.kwon.Obj"%>
<%@page import="dao.kwon.TicketingDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!TicketingDao ticketingDao = TicketingDao.getInstance();%>
<%
request.setCharacterEncoding("EUC-KR");

String size = request.getParameter("size");
size = (Obj.isStrNull(size) ? "" : size);
out.print(size + "<hr />");
String saveDate = request.getParameter("saveDate");
saveDate = (Obj.isStrNull(saveDate) ? "" : saveDate);
out.print(saveDate + "<hr />");
for(int i = 0; i< Integer.valueOf(size); i++) {
	String trainNo = request.getParameter("trainNo"+i);
	trainNo = (Obj.isStrNull(trainNo) ? "" : trainNo);
	out.print(trainNo + ", ");
}
out.print("<hr />");
for(int i = 0; i< Integer.valueOf(size); i++) {
	String src = request.getParameter("src"+i);
	src = (Obj.isStrNull(src) ? "" : src);
	out.print(src + ", ");
}
out.print("<hr />");
for(int i = 0; i< Integer.valueOf(size); i++) {
	String dest = request.getParameter("dest"+i);
	dest = (Obj.isStrNull(dest) ? "" : dest);
	out.print(dest + ", ");
}
out.print("<hr />");
for(int i = 0; i< Integer.valueOf(size); i++) {
	String departureTime = request.getParameter("departureTime"+i);
	departureTime = (Obj.isStrNull(departureTime) ? "" : departureTime);
	out.print(departureTime + ", ");
}
out.print("<hr />");
for(int i = 0; i< Integer.valueOf(size); i++) {
	String arrivalTime = request.getParameter("arrivalTime"+i);
	arrivalTime = (Obj.isStrNull(arrivalTime) ? "" : arrivalTime);
	out.print(arrivalTime + ", ");
}
out.print("<hr />");




%>
