package bean.lee;

public class TimeGraphBean {
	private String departureTime;//��߽ð�
	private String arrivalTime;//�����ð�
	private int count;//����
	private double persent;//��з�
	
	public TimeGraphBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public TimeGraphBean(String departureTime, String arrivalTime, int count, double persent) {
		super();
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.count = count;
		this.persent = persent;
	}
	
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public double getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getPersent() {
		return persent;
	}
	public void setPersent(double persent) {
		this.persent = persent;
	}
	
	@Override
	public String toString() {
		return "GraphTimeBean [departureTime=" + departureTime + ", arrivalTime=" + arrivalTime + ", count=" + count
				+ ", persent=" + persent + "]";
	}
	
	
	
	
}
