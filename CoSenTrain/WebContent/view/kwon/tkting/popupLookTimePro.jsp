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


//param �ޱ�
String trainType = request.getParameter("tType");
String tNo = request.getParameter("tNo");		//trainNo ���ڿ� ����
int trainNo = -1;								//trainNo ������ ����
String srcName = request.getParameter("srcName");
String destName = request.getParameter("destName");
String departureTime = request.getParameter("departureTime");
String arrivalTime = request.getParameter("arrivalTime");
TktingSchedule schedule = new TktingSchedule();

//param �ٵ��
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






/**  �� Java Version 8.0 Required; Stream Lib. has bean used �� */
try {
/* ���� ���� ���� */
//�� ���� (true: ���� / false: ����)
final List<String> stationsOrdered = TicketingDao.selectStationsOrdered(true);	//final val for annony
final List<String> temp = new ArrayList<String>();
if((stationsOrdered.indexOf(destName) - stationsOrdered.indexOf(srcName)) < 0) {	//�����̸�
	for(int i = stationsOrdered.size() - 1; i >= 0; i--) {
		temp.add(stationsOrdered.get(i));
	}
	stationsOrdered.clear();
	for(int i = 0; i < temp.size(); i++) {
		stationsOrdered.add(temp.get(i));
	}
}
//�ش� ������ ��ü ���� ���� ��������
List<TktingSchedule> tSchedule = TicketingDao.getTSchedule(map);
//�ش� ������ ��ü ���� �� ����
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

//��� ��
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

//�߰� ����
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
	if(e.getSrcName().equals("����")) {
		out.println("����� : " + e);
	}
	if(e.getDestName().equals("����")) {
		out.println("������ : " + e);
	}
}
 */


for(TktingSchedule e : tSchedule) {
	//out.println(e + "<br />");
}


//���� ��
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
