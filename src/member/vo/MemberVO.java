package member.vo;

import java.util.Date;

public class MemberVO {
	private String id;
	private String nick;
	private String name;
	private String pass;
	private String tel;
	private String email;
	private String addr;
	private String noread;
	private int point;
	private String lvl;
	private String state;
	private Date signupdate;
	private Date stopdate;
	private int report;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getNoread() {
		return noread;
	}
	public void setNoread(String noread) {
		this.noread = noread;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getLvl() {
		return lvl;
	}
	public void setLvl(String lvl) {
		this.lvl = lvl;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getSignupdate() {
		return signupdate;
	}
	public void setSignupdate(Date signupdate) {
		this.signupdate = signupdate;
	}
	public Date getStopdate() {
		return stopdate;
	}
	public void setStopdate(Date stopdate) {
		this.stopdate = stopdate;
	}
	public int getReport() {
		return report;
	}
	public void setReport(int report) {
		this.report = report;
	}
}
