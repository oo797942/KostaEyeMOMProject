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
	MultipartFile v_flashName;
	String v_flash;
	int v_count;
	int v_good;

	}
