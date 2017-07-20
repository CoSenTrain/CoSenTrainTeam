package bean.kwon;

public class TktingSchedule {
	private long rm;
	private long runningNo;
	private long trainNo;
	private String trainType;
	private int src;
	private String srcName;
	private int dest;
	private String destName;
	private String departureTime;
	private String arrivalTime;

	public int getSrc() {
		return src;
	}
	public void setSrc(int src) {
		this.src = src;
	}
	public int getDest() {
		return dest;
	}
	public void setDest(int dest) {
		this.dest = dest;
	}
	public long getRm() {
		return rm;
	}
	public void setRm(long rm) {
		this.rm = rm;
	}
	public long getRunningNo() {
		return runningNo;
	}
	public void setRunningNo(long runningNo) {
		this.runningNo = runningNo;
	}
	public long getTrainNo() {
		return trainNo;
	}
	public void setTrainNo(long trainNo) {
		this.trainNo = trainNo;
	}
	public String getTrainType() {
		return trainType;
	}
	public void setTrainType(String trainType) {
		this.trainType = trainType;
	}
	public String getSrcName() {
		return srcName;
	}
	public void setSrcName(String srcName) {
		this.srcName = srcName;
	}
	public String getDestName() {
		return destName;
	}
	public void setDestName(String destName) {
		this.destName = destName;
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
	
	@Override
	public String toString() {
		return "TktingSchedule [rm=" + rm + ", runningNo=" + runningNo + ", trainNo=" + trainNo + ", trainType="
				+ trainType + ", src=" + src + ", srcName=" + srcName + ", dest=" + dest + ", destName=" + destName
				+ ", departureTime=" + departureTime + ", arrivalTime=" + arrivalTime + "]";
	}
}
