<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.kwon.TicketingDao"%>
<%@page import="java.util.List"%>
<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="util.kwon.Obj"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("EUC-KR");


//param 받기
String trainType = request.getParameter("tType");
String tNo = request.getParameter("tNo");		//trainNo 문자열 버전
int trainNo = -1;								//trainNo 정수형 버전
String srcName = request.getParameter("srcName");
String destName = request.getParameter("destName");
String departureTime = request.getParameter("departureTime");
String arrivalTime = request.getParameter("arrivalTime");
TktingSchedule schedule = new TktingSchedule();

//param 다듬기
trainType = (Obj.isStrNull(trainType) ? "" : trainType);
tNo = (Obj.isStrNull(tNo) ? "-1" : tNo.trim());
trainNo = Integer.valueOf(tNo);
srcName = (Obj.isStrNull(srcName) ? "" : srcName);
destName = (Obj.isStrNull(destName) ? "" : destName);
departureTime = (Obj.isStrNull(departureTime) ? "" : departureTime);
arrivalTime = (Obj.isStrNull(arrivalTime) ? "" : arrivalTime);

schedule.setTrainType(trainType);
schedule.setTrainNo(trainNo);
schedule.setSrcName(srcName);
schedule.setDestName(destName);
schedule.setDepartureTime(departureTime);
schedule.setArrivalTime(arrivalTime);

Map<String, Object> map = new HashMap<String, Object>();
map.put("srcName", srcName);
map.put("destName", destName);

StringBuffer json = new StringBuffer();



json.trimToSize();
out.print(json.toString());




%>
