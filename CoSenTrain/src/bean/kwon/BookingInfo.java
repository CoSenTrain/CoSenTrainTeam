package bean.kwon;

public class BookingInfo {
	//Fields
	private int runningNo;
	private int seatNo;
	
	//Constructors
	public BookingInfo() {}
	public BookingInfo(int runningNo, int seatNo) {
		this.runningNo = runningNo;
		this.seatNo = seatNo;
	}
	
	//Getters And Setters
	public int getRunningNo() {
		return runningNo;
	}
	public void setRunningNo(int runningNo) {
		this.runningNo = runningNo;
	}
	public int getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}

	//equals
	@Override
	public boolean equals(Object obj) {
		BookingInfo c = (BookingInfo) obj;
		return (c.getRunningNo() == this.runningNo && c.getSeatNo() == this.seatNo);
	}
	
	//toString
	@Override
	public String toString() {
		return "BookingInfo [runningNo=" + runningNo + ", seatNo=" + seatNo + "]";
	}
}
