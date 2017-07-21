<%@page import="java.util.ArrayList"%>
<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="java.util.List"%>
<%@page import="util.kwon.Obj"%>
<%@page import="dao.kwon.TicketingDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!TicketingDao ticketingDao = TicketingDao.getInstance();%>
<%
request.setCharacterEncoding("EUC-KR");

//size
String size = request.getParameter("size");
size = (Obj.isStrNull(size) ? "" : size);
//saveDate
String saveDate = request.getParameter("saveDate");
saveDate = (Obj.isStrNull(saveDate) ? "" : saveDate);

//List to Insert
List<TktingSchedule> list = new ArrayList<TktingSchedule>();

for(int i = 0; i< Integer.valueOf(size); i++) {
	//bean to Add
	TktingSchedule bean = new TktingSchedule();
	
	/* 모두 input[required="required"] 속성으로 null이 들어올 일은 없다고 가정 */
	
	//trainNo
	String trainNo = request.getParameter("trainNo"+i);
	bean.setTrainNo(Integer.valueOf(trainNo));	//setBean
	//src
	String src = request.getParameter("src"+i);
	bean.setSrc(Integer.valueOf(src));	//setBean
	//dest
	String dest = request.getParameter("dest"+i);
	bean.setDest(Integer.valueOf(dest));	//setBean
	//departureTime	(format="2018-02-11T12:59")
	String departureTime = request.getParameter("departureTime"+i);
	departureTime = saveDate + departureTime.substring(saveDate.length());
	bean.setDepartureTime(departureTime);	//setBean
	//arrivalTime	(format="2018-02-11T12:59")
	String arrivalTime = request.getParameter("arrivalTime"+i);
	bean.setArrivalTime(arrivalTime);	//setBean
	
	//add to List
	if(!Obj.isStrNull(trainNo) && !Obj.isStrNull(src) && !Obj.isStrNull(dest) && !Obj.isStrNull(departureTime) && !Obj.isStrNull(arrivalTime)) {
		//AND 
		if(!src.equals(dest)) {
			list.add(bean);
		}
	}
}

//DAO
ticketingDao.saveSchedule(list);

request.getRequestDispatcher("/view/admin/trainScheduleManagement.jsp").forward(request, response);

%>
