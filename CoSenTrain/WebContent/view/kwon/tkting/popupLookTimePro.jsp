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
map.put("trainType", trainType);
map.put("trainNo", trainNo);
map.put("yyyymmdd", departureTime.substring(0, 10));






/**  ★ Java Version 8.0 Required; Stream Lib. has bean used ★ */
try {
/* 관리 목적 변수 */
//역 순서 (true: 하행 / false: 하행)
final List<String> stationsOrdered = TicketingDao.selectStationsOrdered(true);	//final val for annony
final List<String> temp = new ArrayList<String>();
if((stationsOrdered.indexOf(destName) - stationsOrdered.indexOf(srcName)) < 0) {	//상행이면
	for(int i = stationsOrdered.size() - 1; i >= 0; i--) {
		temp.add(stationsOrdered.get(i));
	}
	stationsOrdered.clear();
	for(int i = 0; i < temp.size(); i++) {
		stationsOrdered.add(temp.get(i));
	}
}
//해당 열차의 전체 운행 정보 가져오기
List<TktingSchedule> tSchedule = TicketingDao.getTSchedule(map);
//해당 열차의 전체 운행 역 정보
List<Object> stations = new ArrayList<Object>();
for(TktingSchedule e : tSchedule) {
	stations.add(e.getSrcName());
	stations.add(e.getDestName());
}
stations = stations.stream().distinct().collect(Collectors.toList());
Collections.sort(stations, new Comparator(){
	public int compare(Object x, Object y) {
		return (stationsOrdered.indexOf(x) - stationsOrdered.indexOf(y));
	}
});

StringBuffer json = new StringBuffer();

json.append("[");

//출발 역
for(int i = 0; i < tSchedule.size(); i++) {
	TktingSchedule e = tSchedule.get(i);
	if(e.getSrcName().equals(stations.get(0))) {
		json.append("{")
		.append("\"station\":").append("\"" + stations.get(0) + "\",")
		.append("\"arrival\":").append("\"-\",")
		.append("\"departure\":").append("\"" + e.getDepartureTime().substring("yyyy/MM/dd ".length(), "yyyy/MM/dd ".length() + "HH:mm".length()) + "\",")
		.append("\"delayed\":").append("\"-\"")
		.append("},");
		break;
	}
}

//중간 역들
if(stations.size() > 2) {
	for(int i = 1; i < stations.size() - 1; i++) {
		String stName1 = stations.get(i-1).toString();
		String stName2 = stations.get(i).toString();
		
		json.append("{");
		json.append("\"station\":").append("\"" + stName2 + "\",");
		for(int j = 0; j < tSchedule.size(); j++) {
			TktingSchedule e = tSchedule.get(j);
			if(e.getDestName().equals(stName2)) {
				json.append("\"arrival\":").append("\"" + e.getArrivalTime().substring("yyyy/MM/dd ".length(), "yyyy/MM/dd ".length() + "HH:mm".length()) + "\",");
				break;
			}
		}
		for(int j = 0; j < tSchedule.size(); j++) {
			TktingSchedule e = tSchedule.get(j);
			if(e.getSrcName().equals(stName2)) {
				json.append("\"departure\":").append("\"" + e.getDepartureTime().substring("yyyy/MM/dd ".length(), "yyyy/MM/dd ".length() + "HH:mm".length()) + "\",");
				break;
			}
		}
		json.append("\"delayed\":").append("\"-\"");
		json.append("},");
	}
}
/* 
for(int i = 0; i < tSchedule.size(); i++) {
	TktingSchedule e = tSchedule.get(i);
	if(e.getSrcName().equals("대전")) {
		out.println("출발지 : " + e);
	}
	if(e.getDestName().equals("대전")) {
		out.println("도착지 : " + e);
	}
}
 */


for(TktingSchedule e : tSchedule) {
	//out.println(e + "<br />");
}


//종착 역
for(int i = 0; i < tSchedule.size(); i++) {
	TktingSchedule e = tSchedule.get(i);
	if(e.getDestName().equals(stations.get(stations.size()-1))) {
		json.append("{")
		.append("\"station\":").append("\"" + stations.get(stations.size()-1) + "\",")
		.append("\"arrival\":").append("\"" + e.getArrivalTime().substring("yyyy/MM/dd ".length(), "yyyy/MM/dd ".length() + "HH:mm".length()) + "\",")
		.append("\"departure\":").append("\"-\",")
		.append("\"delayed\":").append("\"-\"")
		.append("}");
		break;
	}
}
json.append("]");




/*
SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");  

Date d1 = null;
Date d2 = null;
try {
    d1 = format.parse(departureTime);
    d2 = format.parse(arrivalTime);
} catch (ParseException e) {
    e.printStackTrace();
}    

long diff = d2.getTime() - d1.getTime();
*/




json.trimToSize();
out.print(json.toString());



} catch(Exception e) {e.printStackTrace();}
%>
