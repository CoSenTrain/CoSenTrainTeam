package bean.lim;

public class Users {
private int userno;
private String name;	
private String pwweb;
private int pwticketing;
private String birth;
private String gender;
private String emailreceivable;
private String phone;
private int zipcodeno;
private String addr;
private String isDeleted;
private String modDate;
private String regDate;

 public Users(){
	 super();
 }

public Users(int userno, String name, String pwweb, int pwticketing, String birth, String gender,
		String emailreceivable, String phone, int zipcodeno, String addr, String isDeleted, String modDate,
		String regDate) {
	super();
	this.userno = userno;
	this.name = name;
	this.pwweb = pwweb;
	this.pwticketing = pwticketing;
	this.birth = birth;
	this.gender = gender;
	this.emailreceivable = emailreceivable;
	this.phone = phone;
	this.zipcodeno = zipcodeno;
	this.addr = addr;
	this.isDeleted = isDeleted;
	this.modDate = modDate;
	this.regDate = regDate;
}

public int getUserno() {
	return userno;
}

public void setUserno(int userno) {
	this.userno = userno;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPwweb() {
	return pwweb;
}

public void setPwweb(String pwweb) {
	this.pwweb = pwweb;
}

public int getPwticketing() {
	return pwticketing;
}

public void setPwticketing(int pwticketing) {
	this.pwticketing = pwticketing;
}

public String getBirth() {
	return birth;
}

public void setBirth(String birth) {
	this.birth = birth;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getEmailreceivable() {
	return emailreceivable;
}

public void setEmailreceivable(String emailreceivable) {
	this.emailreceivable = emailreceivable;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public int getZipcodeno() {
	return zipcodeno;
}

public void setZipcodeno(int zipcodeno) {
	this.zipcodeno = zipcodeno;
}

public String getAddr() {
	return addr;
}

public void setAddr(String addr) {
	this.addr = addr;
}

public String getIsDeleted() {
	return isDeleted;
}

public void setIsDeleted(String isDeleted) {
	this.isDeleted = isDeleted;
}

public String getModDate() {
	return modDate;
}

public void setModDate(String modDate) {
	this.modDate = modDate;
}

public String getRegDate() {
	return regDate;
}

public void setRegDate(String regDate) {
	this.regDate = regDate;
}

@Override
public String toString() {
	return "users [userno=" + userno + ", name=" + name + ", pwweb=" + pwweb + ", pwticketing=" + pwticketing
			+ ", birth=" + birth + ", gender=" + gender + ", emailreceivable=" + emailreceivable + ", phone=" + phone
			+ ", zipcodeno=" + zipcodeno + ", addr=" + addr + ", isDeleted=" + isDeleted + ", modDate=" + modDate
			+ ", regDate=" + regDate + "]";
}
	




}
