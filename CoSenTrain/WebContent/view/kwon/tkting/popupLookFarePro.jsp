<%@page import="dao.kwon.CarDao"%>
<%@page import="dao.kwon.DiscountDao"%>
<%@page import="bean.kwon.Discount"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.kwon.TicketingDao"%>
<%@page import="java.util.List"%>
<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="util.kwon.Obj"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!CarDao carDao = CarDao.getInstance();%>
<%!DiscountDao discountDao = DiscountDao.getInstance();%>
<%!TicketingDao ticketingDao = TicketingDao.getInstance();%>
<%
request.setCharacterEncoding("UTF-8");


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

//DB 정보 가져오기
int fare = ticketingDao.getRountFare(map);
List<Discount> dList = discountDao.selectDiscount();
List<String> carTypes = carDao.selectCarTypes();

final int ADV_ADDITIONAL = 5000;	//특실은 5000원 더 비쌈!
StringBuffer json = new StringBuffer();
/* 
<td class="adv-normal">0</td>
<td class="adv-child">0</td>
<td class="adv-senior">0</td>
<td class="adv-disabled">0</td>
<td class="adv-nNerit">0</td>
<td class="rgr-normal">0</td>
<td class="rgr-child">0</td>
<td class="rgr-senior">0</td>
<td class="rgr-disabled">0</td>
<td class="rgr-nNerit">0</td>
 */

json.append("{");

for(int i = 0; i < carTypes.size(); i++) {
	for(int j = 0; j < dList.size(); j++) {	
		switch(carTypes.get(i)) {
		case "advanced":
			json.append("\"adv-" + dList.get(j).getCondition() + "\":");	//key
			json.append(fare - dList.get(j).getDiscount() + ADV_ADDITIONAL);	//value
			break;
		case "regular":
			json.append("\"rgr-" + dList.get(j).getCondition() + "\":");	//key
			json.append(fare - dList.get(j).getDiscount());	//value
			break;
		default:
			json.append("\"etc-" + dList.get(j).getCondition() + "\":");	//key
			json.append(fare);	//value
			break;
		}
		if((i != (carTypes.size() -1)) || (j != (dList.size() -1))) {
			json.append(",");	//,
		}
	}
}

json.append("}");

json.trimToSize();
out.print(json.toString());




%>
