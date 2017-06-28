package bean.kwon;

public class Discount {
	private int discountNo;
	private String condition;
	private int discount;
	
	public int getDiscountNo() {
		return discountNo;
	}
	public void setDiscountNo(int discountNo) {
		this.discountNo = discountNo;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	@Override
	public String toString() {
		return "Discount [discountNo=" + discountNo + ", condition=" + condition + ", discount=" + discount + "]<br />";
	}	
}
