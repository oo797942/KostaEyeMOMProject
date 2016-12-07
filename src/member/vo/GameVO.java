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
	MultipartFile g_photo;
	String g_photoName;
	MultipartFile g_flash;
	String g_flashName;
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
	public MultipartFile getG_photo() {
		return g_photo;
	}
	public void setG_photo(MultipartFile g_photo) {
		this.g_photo = g_photo;
	
//			파일이름 중복 방지를 위해 현재시간을 구하여 저장
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
		Date currentTime = new Date ( );
		String dTime = formatter.format ( currentTime );
		
		if(! g_photo.isEmpty()){
			this.g_photoName = dTime+g_photo.getOriginalFilename();
//			this.b_fsize = g_photo.getSize();

			
			
			//업로드된 파일이 저장될 경로
			File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\"+g_photoName);
			
			try {
				g_photo.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	
	
	}
	public MultipartFile getG_flash() {
		return g_flash;
	} 
	public void setG_flash(MultipartFile g_flash) {
		this.g_flash = g_flash;
	
		
//			파일이름 중복 방지를 위해 현재시간을 구하여 저장
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
		Date currentTime = new Date ( );
		String dTime = formatter.format ( currentTime );
		
		if(! g_flash.isEmpty()){
			this.g_flashName = dTime+g_flash.getOriginalFilename();
//			this.b_fsize = g_photo.getSize();
			
			
			
			//업로드된 파일이 저장될 경로
			File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\flash\\"+g_flashName);
			
			try {
				g_flash.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	
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
	public String getG_photoName() {
		return g_photoName;
	}
	public void setG_photoName(String g_photoName) {
		this.g_photoName = g_photoName;
	}
	public String getG_flashName() {
		return g_flashName;
	}
	public void setG_flashName(String g_flashName) {
		this.g_flashName = g_flashName;
	}
	
	
	
}
