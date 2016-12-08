package member.vo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private int b_no;
	private String b_cate;
	private String b_title;
	private String b_content;
	private MultipartFile b_photo1;
	private MultipartFile b_photo2;
	private MultipartFile b_photo3;
	private String b_photo1name;
	private String b_photo2name;
	private String b_photo3name;
	private String b_good;
	private int b_count;
	private Date b_date;
	private String b_ip;
	private String b_addr;
	private String b_report;
	private String b_nick;
	private String u_id;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_cate() {
		return b_cate;
	}
	public void setB_cate(String b_cate) {
		this.b_cate = b_cate;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public MultipartFile getB_photo1() {
		return b_photo1;
	}
	public void setB_photo1(MultipartFile b_photo1) {
		this.b_photo1 = b_photo1;
		
//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	if(! b_photo1.isEmpty()){
		this.b_photo1name = dTime+b_photo1.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\kosta\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\"+b_photo1name);
		
		try {
			b_photo1.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	}
	public MultipartFile getB_photo2() {
		return b_photo2;
	}
	public void setB_photo2(MultipartFile b_photo2) {
		this.b_photo2 = b_photo2;
//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	if(! b_photo2.isEmpty()){
		this.b_photo2name = dTime+b_photo2.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\kosta\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\"+b_photo2name);
		
		try {
			b_photo2.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	}
	public MultipartFile getB_photo3() {
		return b_photo3;
	}
	public void setB_photo3(MultipartFile b_photo3) {
		this.b_photo3 = b_photo3;
//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	if(! b_photo3.isEmpty()){
		this.b_photo3name = dTime+b_photo3.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\kosta\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\"+b_photo3name);
		
		try {
			b_photo3.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	}

	public String getB_good() {
		return b_good;
	}
	public void setB_good(String b_good) {
		this.b_good = b_good;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public String getB_ip() {
		return b_ip;
	}
	public void setB_ip(String b_ip) {
		this.b_ip = b_ip;
	}
	public String getB_addr() {
		return b_addr;
	}
	public void setB_addr(String b_addr) {
		this.b_addr = b_addr;
	}
	public String getB_report() {
		return b_report;
	}
	public void setB_report(String b_report) {
		this.b_report = b_report;
	}
	public String getB_nick() {
		return b_nick;
	}
	public void setB_nick(String b_nick) {
		this.b_nick = b_nick;
	}

	public String getB_photo1name() {
		return b_photo1name;
	}
	public void setB_photo1name(String b_photo1name) {
		this.b_photo1name = b_photo1name;
	}
	public String getB_photo2name() {
		return b_photo2name;
	}
	public void setB_photo2name(String b_photo2name) {
		this.b_photo2name = b_photo2name;
	}
	public String getB_photo3name() {
		return b_photo3name;
	}
	public void setB_photo3name(String b_photo3name) {
		this.b_photo3name = b_photo3name;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
	
	
}
