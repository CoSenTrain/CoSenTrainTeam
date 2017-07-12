<%@page import="java.util.ArrayList"%>
<%@page import="bean.kwon.BookingInfo"%>
<%@page import="test.kwon.BookingList"%>
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
String selectingSeats = request.getParameter("selectingSeats");
selectingSeats = (Obj.isStrNull(carNo) ? "-1" : selectingSeats);

//map
Map<String, Object> map = new HashMap<String, Object>();
map.put("tType", tType);
map.put("srcName", srcName);
map.put("destName", destName);
map.put("dT", dT);
map.put("aT", aT);
map.put("trainNo", Integer.valueOf(trainNo));
map.put("carNo", Integer.valueOf(carNo));
map.put("runningNo", seatDao.getRunningNo(map));
map.put("selectingSeats", selectingSeats);
		
////   DAO   ///////////////////////////////////////////////////////////////////////////////////////////

List<BookingInfo> bookingList = new ArrayList<BookingInfo>();
if(!Obj.isStrNull(selectingSeats) && !selectingSeats.trim().equals("-1")) {	
	String[] selectingSeatsArr = selectingSeats.split(",");
	for(int i = 0; i < selectingSeatsArr.length; i++) {
		if(!Obj.isStrNull(selectingSeatsArr[i])) {
			BookingInfo e = new BookingInfo(Integer.valueOf(String.valueOf(map.get("runningNo")).trim()), Integer.valueOf(selectingSeatsArr[i].trim()));
			bookingList.add(e);
		}
	}
}

//예약(자바 데이터)
/* 
if(BookingList.getInstance().addList(bookingList)) {	//불가능
	jspName = "tktingReservationProcess";
	
	request.setAttribute("tType", tType);
	request.setAttribute("srcName", srcName);
	request.setAttribute("destName", destName);
	request.setAttribute("dT", dT);
	request.setAttribute("trainNo", trainNo);
	request.setAttribute("carNo", carNo);
} else {	//예약 가능
	jspName = "tktingPayment";
}
 */

//전체 좌석 정보들 + 해당 칸의 예매된 티켓 정보들
out.print("{" + "\"seatList\":" + seatDao.getSeatList(map) + ",\"hasAdded\":" + BookingList.getInstance().addList(bookingList) + "," + "\"bookedSeats\":");
out.print(BookingList.getInstance().getbookedSeats((int) map.get("runningNo")));	//bookedSeats 처리
out.print("}");

////  Dispather   //////////////////////////////////////////////////////////////////////////////////////
//request.getRequestDispatcher("/view/kwon/tkting/tktingSeatBooking.jsp").forward(request, response);














//전체 catch
} catch(Exception e) {
	e.printStackTrace();
}
%>