package test.beans;

public class student {
	
	private int sid;
	private String sname;
	private String semail;
	private String spass;
	private String scpass;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	@Override
	public String toString() {
		return "student [sid=" + sid + ", sname=" + sname + ", semail=" + semail + ", spass=" + spass + ", scpass="
				+ scpass + "]";
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getSpass() {
		return spass;
	}
	public void setSpass(String spass) {
		this.spass = spass;
	}
	public String getScpass() {
		return scpass;
	}
	public void setScpass(String scpass) {
		this.scpass = scpass;
	}

}
