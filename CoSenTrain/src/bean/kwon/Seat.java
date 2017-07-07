package bean.kwon;

import util.kwon.Obj;

public class Seat {
	//Fields
	private int cnt;
	private int seatNo;
	private int carNo;
	private String seatName;
	private int seatNameNumber;
	private String seatNameLabel;
	
	//Constructors
	public Seat() {}
	public Seat(int cnt, int seatNo, int carNo, String seatName, int seatNameNumber, String seatNameLabel) {
		this.cnt = cnt;
		this.seatNo = seatNo;
		this.carNo = carNo;
		this.seatName = seatName;
		this.seatNameNumber = seatNameNumber;
		this.seatNameLabel = seatNameLabel;
	}
	
	//Getters And Setters
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}
	public int getCarNo() {
		return carNo;
	}
	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}
	public String getSeatName() {
		return seatName;
	}
	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}
	public int getSeatNameNumber() {
		return seatNameNumber;
	}
	public void setSeatNameNumber(int seatNameNumber) {
		this.seatNameNumber = seatNameNumber;
	}
	public String getSeatNameLabel() {
		return seatNameLabel;
	}
	public void setSeatNameLabel(String seatNameLabel) {
		this.seatNameLabel = seatNameLabel;
	}

	//toString()
	@Override
	public String toString() {
		StringBuffer json = new StringBuffer();
		
		json.append("{")
		.append("\"cnt\":").append(cnt).append(",")
		.append("\"seatNo\":").append(seatNo).append(",")
		.append("\"carNo\":").append(carNo).append(",")
		.append("\"seatName\":").append(Obj.isStrNull(seatName) ? "null" : "\"" + seatName + "\"").append(",")
		.append("\"seatNameNumber\":").append(seatNameNumber).append(",")
		.append("\"seatNameLabel\":").append(Obj.isStrNull(seatNameLabel) ? "null" : "\"" + seatNameLabel + "\"")
		.append("}");
		
		json.trimToSize();
		return json.toString();
	}
}
