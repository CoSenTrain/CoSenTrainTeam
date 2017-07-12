package bean.kwon;

public class Payment {
	private int paymentNo;
	private int userNo;
	private int money;
	private String regdate;
	
	public Payment() {}
	public Payment(int paymentNo, int userNo, int money, String regdate) {
		this.paymentNo = paymentNo;
		this.userNo = userNo;
		this.money = money;
		this.regdate = regdate;
	}
	
	public int getPaymentNo() {
		return paymentNo;
	}
	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "Payment [paymentNo=" + paymentNo + ", userNo=" + userNo + ", money=" + money + ", regdate=" + regdate
				+ "]";
	}
}
