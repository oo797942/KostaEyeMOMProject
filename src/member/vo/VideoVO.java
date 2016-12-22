package member.vo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.web.multipart.MultipartFile;

public class VideoVO extends PageVO{
	
	int d_no;
	String d_title;
	String d_content;
	MultipartFile d_photoName;
	String d_photo;
	MultipartFile d_videoName;
	String d_video;
	int d_count;
	int d_good;
	String d_goodog;
	String d_recomId;
	
	public String getD_goodog() {
		return d_goodog;
	}
	public void setD_goodog(String d_goodog) {
		this.d_goodog = d_goodog;
	}
	public String getD_recomId() {
		return d_recomId;
	}
	public void setD_recomId(String d_recomId) {
		this.d_recomId = d_recomId;
	}
	public int getD_no() {
		return d_no;
	}
	public void setD_no(int d_no) {
		this.d_no = d_no;
	}
	public String getD_title() {
		return d_title;
	}
	public void setD_title(String d_title) {
		this.d_title = d_title;
	}
	public String getD_content() {
		return d_content;
	}
	public void setD_content(String d_content) {
		this.d_content = d_content;
	}
	public MultipartFile getD_photoName() {
		return d_photoName;
	}
	public void setD_photoName(MultipartFile d_photoName) {
		this.d_photoName = d_photoName;
		

//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	
	
	if(! d_photoName.isEmpty()){
		this.d_photo = dTime+d_photoName.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\"+d_photo);
		
		try {
			d_photoName.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}

		
	}
	public String getD_photo() {
		return d_photo;
	}
	public void setD_photo(String d_photo) {
		this.d_photo = d_photo;
	}
	public MultipartFile getD_videoName() {
		return d_videoName;
	}
	public void setD_videoName(MultipartFile d_videoName) {
		this.d_videoName = d_videoName;
		
		

//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	
	
	if(! d_videoName.isEmpty()){
		this.d_video = dTime+d_videoName.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\video\\"+d_video);
		
		try {
			d_videoName.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
		
	}
	public String getD_video() {
		return d_video;
	}
	public void setD_video(String d_video) {
		this.d_video = d_video;
	}
	public int getD_count() {
		return d_count;
	}
	public void setD_count(int d_count) {
		this.d_count = d_count;
	}
	public int getD_good() {
		return d_good;
	}
	public void setD_good(int d_good) {
		this.d_good = d_good;
	}


	
		
}
