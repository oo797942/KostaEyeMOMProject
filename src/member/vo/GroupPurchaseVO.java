package member.vo;

import org.springframework.web.multipart.MultipartFile;

public class GroupPurchaseVO extends PageVO{
	private int b_no;
	private String we_title;
	private String we_content;
	private MultipartFile we_photo1;
	private MultipartFile we_photo2;
	private MultipartFile we_photo3;
	private String we_photo1name;
	private String we_photo2name;
	private String we_photo3name;
	private int we_price;
	private int we_count;
	private int we_sold;
	private int we_maxsold;
	private String we_start;
	private String we_end;
	private String we_deposit;
	private String u_id;
	private int we_max;
	public int getWe_max() {
		return we_max;
	}
	public void setWe_max(int we_max) {
		this.we_max = we_max;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getWe_title() {
		return we_title;
	}
	public void setWe_title(String we_title) {
		this.we_title = we_title;
	}
	public String getWe_content() {
		return we_content;
	}
	public void setWe_content(String we_content) {
		this.we_content = we_content;
	}
	public MultipartFile getWe_photo1() {
		return we_photo1;
	}
	public void setWe_photo1(MultipartFile we_photo1) {
		this.we_photo1 = we_photo1;
	}
	public MultipartFile getWe_photo2() {
		return we_photo2;
	}
	public void setWe_photo2(MultipartFile we_photo2) {
		this.we_photo2 = we_photo2;
	}
	public MultipartFile getWe_photo3() {
		return we_photo3;
	}
	public void setWe_photo3(MultipartFile we_photo3) {
		this.we_photo3 = we_photo3;
	}
	public String getWe_photo1name() {
		return we_photo1name;
	}
	public void setWe_photo1name(String we_photo1name) {
		this.we_photo1name = we_photo1name;
	}
	public String getWe_photo2name() {
		return we_photo2name;
	}
	public void setWe_photo2name(String we_photo2name) {
		this.we_photo2name = we_photo2name;
	}
	public String getWe_photo3name() {
		return we_photo3name;
	}
	public void setWe_photo3name(String we_photo3name) {
		this.we_photo3name = we_photo3name;
	}
	public int getWe_price() {
		return we_price;
	}
	public void setWe_price(int we_price) {
		this.we_price = we_price;
	}
	public int getWe_count() {
		return we_count;
	}
	public void setWe_count(int we_count) {
		this.we_count = we_count;
	}
	public int getWe_sold() {
		return we_sold;
	}
	public void setWe_sold(int we_sold) {
		this.we_sold = we_sold;
	}
	public int getWe_maxsold() {
		return we_maxsold;
	}
	public void setWe_maxsold(int we_maxsold) {
		this.we_maxsold = we_maxsold;
	}
	public String getWe_start() {
		return we_start;
	}
	public void setWe_start(String we_start) {
		this.we_start = we_start;
	}
	public String getWe_end() {
		return we_end;
	}
	public void setWe_end(String we_end) {
		this.we_end = we_end;
	}

	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getWe_deposit() {
		return we_deposit;
	}
	public void setWe_deposit(String we_deposit) {
		this.we_deposit = we_deposit;
	}
	
	
	
	
	
}
