<%@page import="dao.kwon.TicketingDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.kwon.PaymentDao"%>
<%@page import="dao.kwon.UsersDao"%>
<%@page import="bean.kwon.Users"%>
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
<%!UsersDao usersDao = UsersDao.getInstance();%>
<%!PaymentDao paymentDao = PaymentDao.getInstance();%>
<%!TicketingDao ticketingDao = TicketingDao.getInstance();%>
<%
try {	//전체 try	
request.setCharacterEncoding("EUC-KR");
		
		
Map<String, Object> map = new HashMap<String, Object>();
//params
String seatFullName = request.getParameter("seatFullName");
String discountNo = request.getParameter("discountNo");
String runningNo = request.getParameter("runningNo");
String personCnt = request.getParameter("personCnt");
String selectingSeats = request.getParameter("selectingSeats");
String discount = request.getParameter("discount");
String fare = request.getParameter("fare");
		
map.put("seatFullName", Obj.isStrNull(seatFullName) ? "" : seatFullName.trim());
map.put("discountNo", Obj.isStrNull(discountNo) ? "-1" : discountNo.trim());
map.put("runningNo", Obj.isStrNull(runningNo) ? "-1" : runningNo.trim());
map.put("personCnt", Obj.isStrNull(personCnt) ? "-1" : personCnt.trim());
map.put("selectingSeats", Obj.isStrNull(selectingSeats) ? "" : selectingSeats.trim());
map.put("discount", Obj.isStrNull(discount) ? "-1" : discount.trim());
map.put("fare", Obj.isStrNull(fare) ? "-1" : fare.trim());

		
		
if(request.getSession().getAttribute("user") == null) {
	String name = request.getParameter("name");
	String pwTicketing = request.getParameter("pwTicketing");
	String email = request.getParameter("email");
	String emailRecivable = request.getParameter("emailRecivable");
	String phone = request.getParameter("phone");
	String userType = request.getParameter("userType");

	map.put("userNo", usersDao.getNextval());
	map.put("name", Obj.isStrNull(name) ? "" : name.trim());
	map.put("pwTicketing", Obj.isStrNull(pwTicketing) ? "" : pwTicketing.trim());
	map.put("email", Obj.isStrNull(email) ? "" : email.trim());
	map.put("emailRecivable", Obj.isStrNull(emailRecivable) ? "N" : "Y");
	map.put("phone", Obj.isStrNull(phone) ? "" : phone.trim());
	map.put("userType", Obj.isStrNull(userType) ? "" : userType.trim());
	
	usersDao.insertNoneUserRequireNo(map);	//nonuser Insert
	
} else {
	Users user = (Users) request.getSession().getAttribute("user");

	map.put("userNo", user.getName());
	map.put("name", user.getName());
	map.put("pwTicketing", user.getPwTicketing());
	map.put("email", user.getEmail());
	map.put("emailRecivable", user.getEmailRecivable());
	map.put("phone", user.getPhone());
	map.put("userType", user.getUserType());
}

String tType = request.getParameter("tType");
String srcName = request.getParameter("srcName");
String destName = request.getParameter("destName");
String dT = request.getParameter("dT");
String aT = request.getParameter("aT");
String trainNo = request.getParameter("trainNo");
String carNo = request.getParameter("carNo");

map.put("tType", Obj.isStrNull(tType) ? "" : tType.trim());
map.put("srcName", Obj.isStrNull(srcName) ? "" : srcName.trim());
map.put("destName", Obj.isStrNull(destName) ? "" : destName.trim());
map.put("dT", Obj.isStrNull(dT) ? "" : dT.trim());
map.put("aT", Obj.isStrNull(aT) ? "" : aT.trim());
map.put("trainNo", Obj.isStrNull(trainNo) ? "-1" : trainNo.trim());
map.put("carNo", Obj.isStrNull(carNo) ? "" : carNo.trim());


List<Integer> seatList = new ArrayList<Integer>();
if(!Obj.isStrNull(selectingSeats) && !selectingSeats.trim().equals("-1")) {	
	String[] selectingSeatsArr = selectingSeats.split(",");
	for(int i = 0; i < selectingSeatsArr.length; i++) {
		if(!Obj.isStrNull(selectingSeatsArr[i])) {
			seatList.add(Integer.valueOf(selectingSeatsArr[i].trim()));
		}
	}
}

map.put("paymentNo", paymentDao.getPaymentNextval());
map.put("money", (Integer.valueOf(fare) + Integer.valueOf(discount)) * Integer.valueOf(personCnt));
paymentDao.insertPayment(map);	//결제 하기

//전체 좌석 정보들 + 해당 칸의 예매된 티켓 정보들
out.println(map);
request.setAttribute("seatFullName", map.get("seatFullName"));

/*
ticketingNo
seatNo
userNo
runningNo
paymentNo
discountNo
*/
//티켓팅!
int ticketNo = ticketingDao.doTicket(map, seatList);
request.setAttribute("ticketNo", ticketNo);
request.setAttribute("money", (Integer.valueOf(fare) + Integer.valueOf(discount)) * Integer.valueOf(personCnt));
request.setAttribute("personCnt", personCnt);
request.setAttribute("name", map.get("name"));

String path = "/view/kwon/tkting/tktingTicket.jsp";
////  Dispather   //////////////////////////////////////////////////////////////////////////////////////
if(ticketNo > 0) {
	path = "/view/kwon/tkting/tktingTicket.jsp";
} else {
	path = "/view/kwon/tkting/kwonTkting.jsp";
}
request.getRequestDispatcher(path).forward(request, response);














//전체 catch
} catch(Exception e) {
	e.printStackTrace();
}
%>