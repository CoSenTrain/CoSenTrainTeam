package bean.kwon;

public class Users {
	private int userNo;
	private String name;
	private String pwWeb;
	private int pwTicketing;
	private String birth;
	private String email;
	private String gender;
	private String emailRecivable;
	private String tel;
	private String phone;
	private int zipcodeNo;
	private String sido;
	private String gugun;
	private String dong;
	private String bunji;
	private String addr;
	private String userType;
	private String isDeleted;
	private String delComment;
	private String moddate;
	private String regdate;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwWeb() {
		return pwWeb;
	}
	public void setPwWeb(String pwWeb) {
		this.pwWeb = pwWeb;
	}
	public int getPwTicketing() {
		return pwTicketing;
	}
	public void setPwTicketing(int pwTicketing) {
		this.pwTicketing = pwTicketing;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailRecivable() {
		return emailRecivable;
	}
	public void setEmailRecivable(String emailRecivable) {
		this.emailRecivable = emailRecivable;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getZipcodeNo() {
		return zipcodeNo;
	}
	public void setZipcodeNo(int zipcodeNo) {
		this.zipcodeNo = zipcodeNo;
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}
	public String getDelComment() {
		return delComment;
	}
	public void setDelComment(String delComment) {
		this.delComment = delComment;
	}
	public String getModdate() {
		return moddate;
	}
	public void setModdate(String moddate) {
		this.moddate = moddate;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "Users [userNo=" + userNo + ", name=" + name + ", pwWeb=" + pwWeb + ", pwTicketing=" + pwTicketing
				+ ", birth=" + birth + ", email=" + email + ", gender=" + gender + ", emailRecivable=" + emailRecivable
				+ ", tel=" + tel + ", phone=" + phone + ", zipcodeNo=" + zipcodeNo + ", sido=" + sido + ", gugun="
				+ gugun + ", dong=" + dong + ", bunji=" + bunji + ", addr=" + addr + ", userType=" + userType
				+ ", isDeleted=" + isDeleted + ", delComment=" + delComment + ", moddate=" + moddate + ", regdate="
				+ regdate + "]<br />";
	}
}