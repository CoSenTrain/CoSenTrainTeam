package bean.kwon;

public class Ticket {
	private int ticketNo;
	private int seatNo;
	private int userNo;
	private int runningNo;
	private int paymentNo;
	private int discountNo;
	
	public Ticket() {}
	public Ticket(int ticketNo, int seatNo, int userNo, int runningNo, int paymentNo, int discountNo) {
		this.ticketNo = ticketNo;
		this.seatNo = seatNo;
		this.userNo = userNo;
		this.runningNo = runningNo;
		this.paymentNo = paymentNo;
		this.discountNo = discountNo;
	}

	public int getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}
	public int getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getRunningNo() {
		return runningNo;
	}
	public void setRunningNo(int runningNo) {
		this.runningNo = runningNo;
	}
	public int getPaymentNo() {
		return paymentNo;
	}
	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}
	public int getDiscountNo() {
		return discountNo;
	}
	public void setDiscountNo(int discountNo) {
		this.discountNo = discountNo;
	}
	
	@Override
	public String toString() {
		return "Ticket [ticketNo=" + ticketNo + ", seatNo=" + seatNo + ", userNo=" + userNo + ", runningNo=" + runningNo
				+ ", paymentNo=" + paymentNo + ", discountNo=" + discountNo + "]";
	}
}
