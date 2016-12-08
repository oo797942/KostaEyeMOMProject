package email;
 
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
 
public class SMTPAuthenticator extends Authenticator{
    
    @Override
    public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("jehee3417", "1734leejh"); //구글아이디는 구글계정에서 @이후를 제외한 값이다.
    }
    
}
 
