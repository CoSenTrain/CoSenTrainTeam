package bean.kwon;

import util.kwon.Obj;

public class Station {
	private int stationNo;
	private String name;
	public Station() {}
	public Station(int stationNo, String name) {
		this.stationNo = stationNo;
		this.name = name;
	}
	public int getStationNo() {
		return stationNo;
	}
	public void setStationNo(int stationNo) {
		this.stationNo = stationNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "{\"stationNo\":" + stationNo + ", \"name\":" + (Obj.isStrNull(name) ? "null" : "\"" + name + "\"") + "}";
	}
}
