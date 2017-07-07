package bean.kwon;

public class SeatCarTrain {
/*
t.trainNo, 
t.type trainType, 
c.carNo, 
c.type carType, 
s.seatNo, 
s.seatName, 
TO_CHAR(c.moddate, 'YYYY/MM/DD HH24:MI:SS') carModdate, 
TO_CHAR(t.moddate, 'YYYY/MM/DD HH24:MI:SS') trainModdate
*/
	//Fields
	private int trainNo;
	private String trainType;
	private int carNo;
	private String carType;
	private int seatNo;
	private String seatName;
	private String carModdate;
	private String trainModdate;
	
	//Constructors
	public SeatCarTrain() {}
	public SeatCarTrain(int trainNo, String trainType, int carNo, String carType, int seatNo, String seatName, String carModdate, String trainModdate) {
		this.trainNo = trainNo;
		this.trainType = trainType;
		this.carNo = carNo;
		this.carType = carType;
		this.seatNo = seatNo;
		this.seatName = seatName;
		this.carModdate = carModdate;
		this.trainModdate = trainModdate;
	}
	
	//Getters And Setters
	public int getTrainNo() {
		return trainNo;
	}
	public void setTrainNo(int trainNo) {
		this.trainNo = trainNo;
	}
	public String getTrainType() {
		return trainType;
	}
	public void setTrainType(String trainType) {
		this.trainType = trainType;
	}
	public int getCarNo() {
		return carNo;
	}
	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public int getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}
	public String getSeatName() {
		return seatName;
	}
	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}
	public String getCarModdate() {
		return carModdate;
	}
	public void setCarModdate(String carModdate) {
		this.carModdate = carModdate;
	}
	public String getTrainModdate() {
		return trainModdate;
	}
	public void setTrainModdate(String trainModdate) {
		this.trainModdate = trainModdate;
	}
	
	//toString()
	@Override
	public String toString() {
		return "SeatCarTrain [trainNo=" + trainNo + ", trainType=" + trainType + ", carNo=" + carNo + ", carType="
				+ carType + ", seatNo=" + seatNo + ", seatName=" + seatName + ", carModdate=" + carModdate
				+ ", trainModdate=" + trainModdate + "]";
	}
}
