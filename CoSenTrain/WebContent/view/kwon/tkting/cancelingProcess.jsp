<%@page import="test.kwon.BookingList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.kwon.BookingInfo"%>
<%@page import="java.util.List"%>
<%@page import="util.kwon.Obj"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
try {	//전체 try	
request.setCharacterEncoding("EUC-KR");
		
		
String selectingSeats = request.getParameter("selectingSeats");
selectingSeats = (Obj.isStrNull(selectingSeats) ? "-1" : selectingSeats);
String runningNo = request.getParameter("runningNo");
runningNo = (Obj.isStrNull(runningNo) ? "-1" : runningNo);

List<BookingInfo> bookingList = new ArrayList<BookingInfo>();
if(!Obj.isStrNull(selectingSeats) && !selectingSeats.trim().equals("-1")) {	
	String[] selectingSeatsArr = selectingSeats.split(",");
	for(int i = 0; i < selectingSeatsArr.length; i++) {
		if(!Obj.isStrNull(selectingSeatsArr[i])) {
			BookingInfo e = new BookingInfo(Integer.valueOf(runningNo.trim()), Integer.valueOf(selectingSeatsArr[i].trim()));
			bookingList.add(e);
		}
	}
}

BookingList.getInstance().deleteAll(bookingList);
////Dispather   //////////////////////////////////////////////////////////////////////////////////////
request.getRequestDispatcher("/view/kwon/tkting/kwonTkting.jsp").forward(request, response);



//전체 catch
} catch(Exception e) {
e.printStackTrace();
}
%>