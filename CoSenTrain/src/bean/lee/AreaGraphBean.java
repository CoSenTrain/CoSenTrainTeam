package bean.lee;

public class AreaGraphBean {
	private String startArea;//출발지
	private String arriveArea;//도착지
	private double count;//수량
	private double persent;//백분률
	
	public AreaGraphBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AreaGraphBean(String startArea, String arriveArea, double count, double persent) {
		super();
		this.startArea = startArea;
		this.arriveArea = arriveArea;
		this.count = count;
		this.persent = persent;
	}

	public String getStartArea() {
		return startArea;
	}

	public void setStartArea(String startArea) {
		this.startArea = startArea;
	}

	public String getArriveArea() {
		return arriveArea;
	}

	public void setArriveArea(String arriveArea) {
		this.arriveArea = arriveArea;
	}

	public double getCount() {
		return count;
	}

	public void setCount(double count) {
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
		return "GraphAreaData [startArea=" + startArea + ", arriveArea=" + arriveArea + ", count=" + count
				+ ", persent=" + persent + "]";
	}
	
	
}
