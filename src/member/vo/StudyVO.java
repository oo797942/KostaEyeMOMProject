package member.vo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.web.multipart.MultipartFile;

public class StudyVO {
	
	int v_no;
	String v_title;
	String v_content;
	MultipartFile v_photoName;
	String v_photo;
	MultipartFile v_videoName;
	String v_video;
	int v_count;
	int v_good;
	String v_goodog;
	String v_recomId;

	public String getV_goodog() {
		return v_goodog;
	}
	public void setV_goodog(String v_goodog) {
		this.v_goodog = v_goodog;
	}
	public String getV_recomId() {
		return v_recomId;
	}
	public void setV_recomId(String v_recomId) {
		this.v_recomId = v_recomId;
	}
	public int getV_no() {
		return v_no;
	}
	public void setV_no(int v_no) {
		this.v_no = v_no;
	}
	public String getV_title() {
		return v_title;
	}
	public void setV_title(String v_title) {
		this.v_title = v_title;
	}
	public String getV_content() {
		return v_content;
	}
	public void setV_content(String v_content) {
		this.v_content = v_content;
	}
	public MultipartFile getV_photoName() {
		return v_photoName;
	}
	public void setV_photoName(MultipartFile v_photoName) {
		this.v_photoName = v_photoName;

	
//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	
	
	if(! v_photoName.isEmpty()){
		this.v_photo = dTime+v_photoName.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\img\\"+v_photo);
		
		try {
			v_photoName.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}


	
	}
	public String getV_photo() {
		return v_photo;
	}
	public void setV_photo(String v_photo) {
		this.v_photo = v_photo;
	}
	public MultipartFile getV_videoName() {
		return v_videoName;
	}
	public void setV_videoName(MultipartFile v_videoName) {
		this.v_videoName = v_videoName;
	
		

//		파일이름 중복 방지를 위해 현재시간을 구하여 저장
	SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA );
	Date currentTime = new Date ( );
	String dTime = formatter.format ( currentTime );
	
	
	
	if(! v_videoName.isEmpty()){
		this.v_video = dTime+v_videoName.getOriginalFilename();
//		this.b_fsize = g_photo.getSize();

		
		
		//업로드된 파일이 저장될 경로
		File f = new File("C:\\Users\\user\\git\\KostaEyeMOMProject\\WebContent\\resources\\video\\"+v_video);
		
		try {
			v_videoName.transferTo(f);
			
		} catch (IllegalStateException e) {				
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}

	
	
	}
	public String getV_video() {
		return v_video;
	}
	public void setV_video(String v_video) {
		this.v_video = v_video;
	}
	public int getV_count() {
		return v_count;
	}
	public void setV_count(int v_count) {
		this.v_count = v_count;
	}
	public int getV_good() {
		return v_good;
	}
	public void setV_good(int v_good) {
		this.v_good = v_good;
	}

	}
