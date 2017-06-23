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
final List<Object> fStations = stations;
//�߰� ����
for(int i = 0; i < tSchedule.size(); i++) {
	TktingSchedule e = tSchedule.get(i);
	if(e.getSrcName().equals("����")) {
		out.println("����� : " + e);
	}
	if(e.getDestName().equals("����")) {
		out.println("������ : " + e);
	}
}



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









} catch(Exception e) {e.printStackTrace();}
%>
