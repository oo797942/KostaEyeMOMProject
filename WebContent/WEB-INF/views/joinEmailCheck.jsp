<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.mail.Transport"%>
<%@ page import="javax.mail.Message"%>
<%@ page import="javax.mail.Address"%>
<%@ page import="javax.mail.Session"%>
<%@ page import="javax.mail.Authenticator"%>
<%@ page import="javax.mail.internet.InternetAddress"%>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import="email.SMTPAuthenticator"%>
<%@ page import="java.util.*"%>
  
<% 

    request.setCharacterEncoding("UTF-8");
 
	String email= request.getParameter("email");
	
    // 랜덤 인증번호 생성
    Random random = new Random(System.currentTimeMillis());
    int confirmation = 0;
    
    while(true){
        confirmation = (random.nextInt(10000));
        if(confirmation <10000 && confirmation>1000){break;}
    }
 
    // 보내는 사람, 받는 사람, 제목, 내용 설정
    String from = "jehee3417@gmail.com";
    String to = "jehee3417@gmail.com";
    String subject = "[EyeMOM] 회원가입 인증메일입니다.";
    String content = "하단의 인증번호를 인증번호 확인란에 입력해주세요. <p/> <h3>인증번호: " + confirmation+"</h3>";
    
    if(email!=null){
    	to=email;
    }
    
    // SMTP 서버에 접속하기 위한 정보를 담을 객체
    Properties p = new Properties();    
    
    p.put("mail.smtp.user", "jehee3417@gmail.com"); // Google계정@gmail.com으로 설정
    p.put("mail.smtp.host", "smtp.gmail.com");
    p.put("mail.smtp.port", "465");
    p.put("mail.smtp.starttls.enable", "true");
    p.put("mail.smtp.auth", "true");
    p.put("mail.smtp.debug", "true");
    p.put("mail.smtp.socketFactory.port", "465"); 
    p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
    p.put("mail.smtp.socketFactory.fallback", "false");
    
    try{
        Authenticator auth = new SMTPAuthenticator();
        Session ss = Session.getInstance(p, auth);
        
        ss.setDebug(true);
        
        // 메일의 내용을 담을 객체
        MimeMessage msg = new MimeMessage(ss);    
        
        // 제목
        msg.setSubject(subject);    
        
        // 보내는 사람
        Address fromAddr = new InternetAddress(from);
        msg.setFrom(fromAddr);    
        
        // 받는 사람
        Address toAddr = new InternetAddress(to);
        msg.addRecipient(Message.RecipientType.TO, toAddr);    
        
        // 내용과 인코딩
        msg.setContent(content, "text/html;charset=UTF-8");    
        
        // 전송
        Transport.send(msg);    
    }catch(Exception e){
        e.printStackTrace();
//         out.println("<script>alert('메일 전송 실패ㅠㅠ');</script>");
    }
    
    // 메일 전송 성공
    out.println("<script>alert('메일이 전송되었습니다.');</script>");
    
    session.setAttribute("mail", confirmation);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메일 보내기</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
$("#check").click(function(){
	if($("#userCode").val()==<%=confirmation%>){
		alert("인증성공");
		window.opener.emailComplate();
			window.close();
	}else{
		alert("인증번호를 확인해주세요.");
	}
});
	
});

</script>
</head>
<body>
<h3>인증번호를 입력해주세요</h3>
<input type="text" id="userCode"><input type="button" id="check" value="확인"> 
</body>
</html>