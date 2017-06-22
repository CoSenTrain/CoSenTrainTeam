package bean.lim;

public class ZipCode {
private int zipCodeNo;
private String zipCode;
private String sido;
private String gugun;
private String dong;
private String bunji;
public ZipCode(){
	super();
}

public ZipCode(int zipCodeNo, String zipCode, String sido, String gugun, String dong, String bunji) {
	super();
	this.zipCodeNo = zipCodeNo;
	this.zipCode = zipCode;
	this.sido = sido;
	this.gugun = gugun;
	this.dong = dong;
	this.bunji = bunji;
}

public int getZipCodeNo() {
	return zipCodeNo;
}

public void setZipCodeNo(int zipCodeNo) {
	this.zipCodeNo = zipCodeNo;
}

public String getZipCode() {
	return zipCode;
}

public void setZipCode(String zipCode) {
	this.zipCode = zipCode;
}

public String getSido() {
	return sido;
}

public void setSido(String sido) {
	this.sido = sido;
}

public String getGugun() {
	return gugun;
}

public void setGugun(String gugun) {
	this.gugun = gugun;
}

public String getDong() {
	return dong;
}

public void setDong(String dong) {
	this.dong = dong;
}

public String getBunji() {
	return bunji;
}

public void setBunji(String bunji) {
	this.bunji = bunji;
}

@Override
public String toString() {
	return "ZipCode [zipCodeNo=" + zipCodeNo + ", zipCode=" + zipCode + ", sido=" + sido + ", gugun=" + gugun
			+ ", dong=" + dong + ", bunji=" + bunji + "]";
}


	
	
}
