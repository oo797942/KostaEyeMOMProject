package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.LoginDaoImpl;
import member.dao.MemberDaoImpl;
import member.vo.MemberVO;

@Controller
public class AndroidController {

	@Autowired
	private MemberDaoImpl memberDao;
	@Autowired
	private LoginDaoImpl loginDao;

	@RequestMapping(value = "/android_login.go", method = RequestMethod.POST)
	public Map<String, String> androidTest(String id, String pw) {

		System.out.println("id 받아졌나?>> " + id);
		System.out.println("pw 받아졌나??>> " + pw);
		Map<String, String> result = new HashMap<String, String>();
		MemberVO memberVO = new MemberVO();
		memberVO.setU_id(id);
		memberVO.setU_pass(pw);
		try {
			MemberVO vo = loginDao.memberLogin(memberVO); // vo에 id pw담아서 디비 넘김
			result.put("login", "성공");
			return result;
		} catch (Exception e) {
			result.put("login", "실패");
			return result;
		}
	
	}
}
