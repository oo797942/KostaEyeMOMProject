package member.vo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.web.multipart.MultipartFile;

public class QnAVO {
	private int b_no;
	private String in_cate;
	private String in_title;
	private String in_content;
	private MultipartFile in_photo1;
	private MultipartFile in_photo2;
	private MultipartFile in_photo3;
	private String in_photo1name;
	private String in_photo2name;
	private String in_photo3name;
	private int in_point;
	private int in_count;
	private String in_date;
	private String in_ip;
	private String in_report;
	private String in_nick;
	private String u_id;
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getIn_cate() {
		return in_cate;
	}
	public void setIn_cate(String in_cate) {
		this.in_cate = in_cate;
	}
	public String getIn_title() {
		return in_title;
	}
	public void setIn_title(String in_title) {
		this.in_title = in_title;
	}
	public String getIn_content() {
		return in_content;
	}
	public void setIn_content(String in_content) {
		this.in_content = in_content;
	}
	public MultipartFile getIn_photo1() {
		return in_photo1;
	}
	public void setIn_photo1(MultipartFile in_photo1) {
		this.in_photo1 = in_photo1;
		// 파일이름 중복 방지를 위해 현재시간을 구하여 저장
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
		Date currentTime = new Date();
		String dTime = formatter.format(currentTime);

		if (!in_photo1.isEmpty()) {
			this.in_photo1name = dTime + in_photo1.getOriginalFilename();
			// this.b_fsize = g_photo.getSize();

			// 업로드된 파일이 저장될 경로
			File f = new File("C:\\Users\\kosta\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\" + in_photo1name);

			try {
				in_photo1.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}
	public MultipartFile getIn_photo2() {
		return in_photo2;
	}
	public void setIn_photo2(MultipartFile in_photo2) {
		this.in_photo2 = in_photo2;
		// 파일이름 중복 방지를 위해 현재시간을 구하여 저장
				SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
				Date currentTime = new Date();
				String dTime = formatter.format(currentTime);

				if (!in_photo2.isEmpty()) {
					this.in_photo2name = dTime + in_photo2.getOriginalFilename();
					// this.b_fsize = g_photo.getSize();

					// 업로드된 파일이 저장될 경로
					File f = new File("C:\\Users\\kosta\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\" + in_photo2name);

					try {
						in_photo2.transferTo(f);

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {

						e.printStackTrace();
					}
				}
		
	}
	public MultipartFile getIn_photo3() {
		return in_photo3;
	}
	public void setIn_photo3(MultipartFile in_photo3) {
		this.in_photo3 = in_photo3;
		// 파일이름 중복 방지를 위해 현재시간을 구하여 저장
				SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
				Date currentTime = new Date();
				String dTime = formatter.format(currentTime);

				if (!in_photo3.isEmpty()) {
					this.in_photo3name = dTime + in_photo3.getOriginalFilename();
					// this.b_fsize = g_photo.getSize();

					// 업로드된 파일이 저장될 경로
					File f = new File("C:\\Users\\kosta\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\" + in_photo3name);

					try {
						in_photo3.transferTo(f);

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {

						e.printStackTrace();
					}
				}
	}
	public String getIn_photo1name() {
		return in_photo1name;
	}
	public void setIn_photo1name(String in_photo1name) {
		this.in_photo1name = in_photo1name;
	}
	public String getIn_photo2name() {
		return in_photo2name;
	}
	public void setIn_photo2name(String in_photo2name) {
		this.in_photo2name = in_photo2name;
	}
	public String getIn_photo3name() {
		return in_photo3name;
	}
	public void setIn_photo3name(String in_photo3name) {
		this.in_photo3name = in_photo3name;
	}
	public int getIn_point() {
		return in_point;
	}
	public void setIn_point(int in_point) {
		this.in_point = in_point;
	}
	public int getIn_count() {
		return in_count;
	}
	public void setIn_count(int in_count) {
		this.in_count = in_count;
	}
	public String getIn_date() {
		return in_date;
	}
	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}
	public String getIn_ip() {
		return in_ip;
	}
	public void setIn_ip(String in_ip) {
		this.in_ip = in_ip;
	}
	public String getIn_report() {
		return in_report;
	}
	public void setIn_report(String in_report) {
		this.in_report = in_report;
	}
	public String getIn_nick() {
		return in_nick;
	}
	public void setIn_nick(String in_nick) {
		this.in_nick = in_nick;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
	

}
