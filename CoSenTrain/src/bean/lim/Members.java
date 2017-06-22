package bean.lim;

public class Members {
private int userno;
private String name;	
private String pwweb;
private int pwticketing;
private String birth;
private String email;
private String gender;
private String emailreceivable;
private String tel;
private String phone;
private int zipcodeno;
private String sido;
private String gugun;
private String dong;
private String bunji;
private String addr;
private String usertype;
private String isDeleted;
private String delComment;
private String modDate;
private String regDate;

 public Members(){
	 super();
 }




public Members(int userno, String name, String pwweb, int pwticketing, String birth, String email, String gender,
		String emailreceivable, String tel, String phone, int zipcodeno, String sido, String gugun, String dong,
		String bunji, String addr, String usertype, String isDeleted, String delComment, String modDate,
		String regDate) {
	super();
	this.userno = userno;
	this.name = name;
	this.pwweb = pwweb;
	this.pwticketing = pwticketing;
	this.birth = birth;
	this.email = email;
	this.gender = gender;
	this.emailreceivable = emailreceivable;
	this.tel = tel;
	this.phone = phone;
	this.zipcodeno = zipcodeno;
	this.sido = sido;
	this.gugun = gugun;
	this.dong = dong;
	this.bunji = bunji;
	this.addr = addr;
	this.usertype = usertype;
	this.isDeleted = isDeleted;
	this.delComment = delComment;
	this.modDate = modDate;
	this.regDate = regDate;
}




public int getUserno() {
	return userno;
}

public void setUserno(int userno) {
	this.userno = userno;
}


public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
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


public String getTel() {
	return tel;
}


public void setTel(String tel) {
	this.tel = tel;
}


public String getUsertype() {
	return usertype;
}


public void setUsertype(String usertype) {
	this.usertype = usertype;
}




@Override
public String toString() {
	return "Users [userno=" + userno + ", name=" + name + ", pwweb=" + pwweb + ", pwticketing=" + pwticketing
			+ ", birth=" + birth + ", email=" + email + ", gender=" + gender + ", emailreceivable=" + emailreceivable
			+ ", tel=" + tel + ", phone=" + phone + ", zipcodeno=" + zipcodeno + ", sido=" + sido + ", gugun=" + gugun
			+ ", dong=" + dong + ", bunji=" + bunji + ", addr=" + addr + ", usertype=" + usertype + ", isDeleted="
			+ isDeleted + ", delComment=" + delComment + ", modDate=" + modDate + ", regDate=" + regDate + "]";
}








}
