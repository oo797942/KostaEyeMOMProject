package member.vo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.web.multipart.MultipartFile;

public class GameVO {
	
	int g_no;
	String g_title;
	String g_content;
	MultipartFile g_photoName;
	String g_photo;
	MultipartFile g_flashName;
	String g_flash;
	int g_count;
	int g_good;

	
	
	public int getG_no() {
		return g_no;
	}
	public void setG_no(int g_no) {
		this.g_no = g_no;
	}
	public String getG_title() {
		return g_title;
	}
	public void setG_title(String g_title) {
		this.g_title = g_title;
	}
	public String getG_content() {
		return g_content;
	}
	public void setG_content(String g_content) {
		this.g_content = g_content;
	}
	public MultipartFile getG_photoName() {
		return g_photoName;
	}
	public void setG_photoName(MultipartFile g_photoName) {
		this.g_photoName = g_photoName;
	
	

//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	
	
	if(! g_photoName.isEmpty()){
		this.g_photo = dTime+g_photoName.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\"+g_photo);
		
		try {
			g_photoName.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}


	
	}
	public String getG_photo() {
		return g_photo;
	}
	public void setG_photo(String g_photo) {
		this.g_photo = g_photo;
	}
	public MultipartFile getG_flashName() {
		return g_flashName;
	}
	public void setG_flashName(MultipartFile g_flashName) {
		this.g_flashName = g_flashName;
	
	

//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	if(! g_flashName.isEmpty()){
		this.g_flash = dTime+g_flashName.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\flash\\"+g_flash);
		
		try {
			g_flashName.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}

	
	
	
	}
	public String getG_flash() {
		return g_flash;
	}
	public void setG_flash(String g_flash) {
		this.g_flash = g_flash;
	}
	public int getG_count() {
		return g_count;
	}
	public void setG_count(int g_count) {
		this.g_count = g_count;
	}
	public int getG_good() {
		return g_good;
	}
	public void setG_good(int g_good) {
		this.g_good = g_good;
	}
	
	
}
