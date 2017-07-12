package test.kwon;

import java.util.List;
import java.util.Vector;

import bean.kwon.BookingInfo;
import dao.kwon.TicketingDao;

public class BookingList extends Vector<BookingInfo> {
	private static BookingList bookingList;
	
	private BookingList() {
		super.addAll(TicketingDao.getInstance().getBookingList());
	}
	
	public synchronized static BookingList getInstance() {
		return (bookingList == null ? bookingList = new BookingList() : bookingList);
	}
	
	public synchronized boolean addList(List<BookingInfo> list) {
		for (int i = 0; i < list.size(); i++) {
			if(super.contains(list.get(i))) {
				return false;
			}
		}
		for(int i = 0; i < list.size(); i++) {
			super.add(list.get(i));
		}
		return true;
	}
	
	public synchronized String getbookedSeats(int runningNo) {
		StringBuffer sb = new StringBuffer();
		int addCnt = 0;
		
		sb.append("[");
		for (int i = 0; i < super.size(); i++) {
			if(super.get(i).getRunningNo() == runningNo) {
				sb.append(super.get(i).getSeatNo());
				sb.append(",");
				addCnt++;
			}
		}
		
		sb.trimToSize();
		String rs = sb.toString();
		if(addCnt > 0) rs = rs.substring(0, rs.length() - 1);	//마지막 "," 제거
		return rs + "]";
	}
	
	public synchronized void deleteAll(List<BookingInfo> list) {
		for (int i = 0; i < list.size(); i++) {
			if(super.contains(list.get(i))) {				
				super.remove(list.get(i));
			}
		}
	}
}
