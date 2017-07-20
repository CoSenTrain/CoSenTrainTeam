<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="java.util.List"%>
<%@page import="util.kwon.Obj"%>
<%@page import="dao.kwon.TicketingDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!TicketingDao ticketingDao = TicketingDao.getInstance();%>
<%
request.setCharacterEncoding("EUC-KR");


String baseDate = request.getParameter("baseDate");
baseDate = (Obj.isStrNull(baseDate) ? "" : baseDate);


List<TktingSchedule> list = ticketingDao.selectBaseSchedule(baseDate);





StringBuffer json = new StringBuffer();

json.append("{");

json.append("\"size\":").append(list.size()).append(",");
json.append("\"list\":[");

for(int i = 0; i < list.size(); i ++) {
	json.append("{");
	
	TktingSchedule e = list.get(i);
	json.append("\"trainNo\":").append(e.getTrainNo()).append(",");
	json.append("\"src\":").append(e.getSrc()).append(",");
	json.append("\"srcName\":").append(Obj.isStrNull(e.getSrcName()) ? "null" : "\"" + e.getSrcName() + "\"").append(",");
	json.append("\"dest\":").append(e.getDest()).append(",");
	json.append("\"destName\":").append(Obj.isStrNull(e.getDestName()) ? "null" : "\"" + e.getDestName() + "\"").append(",");
	json.append("\"departureTime\":").append(Obj.isStrNull(e.getDepartureTime()) ? "null" : "\"" + e.getDepartureTime() + "\"").append(",");
	json.append("\"arrivalTime\":").append(Obj.isStrNull(e.getArrivalTime()) ? "null" : "\"" + e.getArrivalTime() + "\"");
	
	json.append("}");
	if(i < list.size() -1) json.append(",");
}

json.append("]}");

json.trimToSize();
out.print(json.toString());




%>
