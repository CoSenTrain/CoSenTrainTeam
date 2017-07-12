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
try {	//��ü try	
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

//����(�ڹ� ������)
/* 
if(BookingList.getInstance().addList(bookingList)) {	//�Ұ���
	jspName = "tktingReservationProcess";
	
	request.setAttribute("tType", tType);
	request.setAttribute("srcName", srcName);
	request.setAttribute("destName", destName);
	request.setAttribute("dT", dT);
	request.setAttribute("trainNo", trainNo);
	request.setAttribute("carNo", carNo);
} else {	//���� ����
	jspName = "tktingPayment";
}
 */

//��ü �¼� ������ + �ش� ĭ�� ���ŵ� Ƽ�� ������
out.print("{" + "\"seatList\":" + seatDao.getSeatList(map) + ",\"hasAdded\":" + BookingList.getInstance().addList(bookingList) + "," + "\"bookedSeats\":");
out.print(BookingList.getInstance().getbookedSeats((int) map.get("runningNo")));	//bookedSeats ó��
out.print("}");

////  Dispather   //////////////////////////////////////////////////////////////////////////////////////
//request.getRequestDispatcher("/view/kwon/tkting/tktingSeatBooking.jsp").forward(request, response);














//��ü catch
} catch(Exception e) {
	e.printStackTrace();
}
%>