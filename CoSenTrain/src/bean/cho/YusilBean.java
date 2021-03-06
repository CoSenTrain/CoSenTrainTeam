package bean.cho;

import java.sql.Date;

public class YusilBean {
	private int rm;
	private int no;
	private String title;
	private String contents;
	private String imgfile;
	private String type;
	private int userno;
	private String feedbackcontentstype;
	private String feedbackreplytype;
	private int step;
	private int lev;
	private int parentno;
	private int refgroup;
	private int replycnt;
	private Date moddate;
	private Date regdate;
	private String lostcategory;
	private String loststore;

	
	public YusilBean() {
		// TODO Auto-generated constructor stub
	}


	public YusilBean(int rm, int no, String title, String contents, String imgfile, String type, int userno,
			String feedbackcontentstype, String feedbackreplytype, int step, int lev, int parentno, int refgroup,
			int replycnt, Date moddate, Date regdate, String lostcategory, String loststore) {
		super();
		this.rm = rm;
		this.no = no;
		this.title = title;
		this.contents = contents;
		this.imgfile = imgfile;
		this.type = type;
		this.userno = userno;
		this.feedbackcontentstype = feedbackcontentstype;
		this.feedbackreplytype = feedbackreplytype;
		this.step = step;
		this.lev = lev;
		this.parentno = parentno;
		this.refgroup = refgroup;
		this.replycnt = replycnt;
		this.moddate = moddate;
		this.regdate = regdate;
		this.lostcategory = lostcategory;
		this.loststore = loststore;
	}


	public int getRm() {
		return rm;
	}


	public void setRm(int rm) {
		this.rm = rm;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getImgfile() {
		return imgfile;
	}


	public void setImgfile(String imgfile) {
		this.imgfile = imgfile;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public int getUserno() {
		return userno;
	}


	public void setUserno(int userno) {
		this.userno = userno;
	}


	public String getFeedbackcontentstype() {
		return feedbackcontentstype;
	}


	public void setFeedbackcontentstype(String feedbackcontentstype) {
		this.feedbackcontentstype = feedbackcontentstype;
	}


	public String getFeedbackreplytype() {
		return feedbackreplytype;
	}


	public void setFeedbackreplytype(String feedbackreplytype) {
		this.feedbackreplytype = feedbackreplytype;
	}


	public int getStep() {
		return step;
	}


	public void setStep(int step) {
		this.step = step;
	}


	public int getLev() {
		return lev;
	}


	public void setLev(int lev) {
		this.lev = lev;
	}


	public int getParentno() {
		return parentno;
	}


	public void setParentno(int parentno) {
		this.parentno = parentno;
	}


	public int getRefgroup() {
		return refgroup;
	}


	public void setRefgroup(int refgroup) {
		this.refgroup = refgroup;
	}


	public int getReplycnt() {
		return replycnt;
	}


	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}


	public Date getModdate() {
		return moddate;
	}


	public void setModdate(Date moddate) {
		this.moddate = moddate;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	public String getLostcategory() {
		return lostcategory;
	}


	public void setLostcategory(String lostcategory) {
		this.lostcategory = lostcategory;
	}


	public String getLoststore() {
		return loststore;
	}


	public void setLoststore(String loststore) {
		this.loststore = loststore;
	}


	@Override
	public String toString() {
		return "YusilBean [rm=" + rm + ", no=" + no + ", title=" + title + ", contents=" + contents + ", imgfile="
				+ imgfile + ", type=" + type + ", userno=" + userno + ", feedbackcontentstype=" + feedbackcontentstype
				+ ", feedbackreplytype=" + feedbackreplytype + ", step=" + step + ", lev=" + lev + ", parentno="
				+ parentno + ", refgroup=" + refgroup + ", replycnt=" + replycnt + ", moddate=" + moddate + ", regdate="
				+ regdate + ", lostcategory=" + lostcategory + ", loststore=" + loststore + "]";
	}


	
	
	

	
	}


