package bean.kwon;

public class Car {
	private int carNo;
	private int trainNo;
	private String type;
	private String moddate;
	
	public int getCarNo() {
		return carNo;
	}
	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}
	public int getTrainNo() {
		return trainNo;
	}
	public void setTrainNo(int trainNo) {
		this.trainNo = trainNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getModdate() {
		return moddate;
	}
	public void setModdate(String moddate) {
		this.moddate = moddate;
	}
	
	@Override
	public String toString() {
		return "Car [carNo=" + carNo + ", trainNo=" + trainNo + ", type=" + type + ", moddate=" + moddate + "]";
	}
}
