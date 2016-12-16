package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	@ResponseBody
	public Map<String, String> androidTest(HttpServletRequest request) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int check = 0;

		System.out.println("id 받아졌나?>> " + id);
		System.out.println("pw 받아졌나??>> " + pw);

		Map<String, String> result = new HashMap<String, String>();
		MemberVO memberVO = new MemberVO();

		if (id == null || id.equals("")) {
			result.put("data1", "아이디를 입력해주세요.");
		} else if (pw == null || pw.equals("")) {
			result.put("data1", "비밀번호를 입력해주세요.");
		} else {
			memberVO.setU_id(id);
			memberVO.setU_pass(pw);
			check = loginDao.androidLoginCheck(memberVO);

			if (check > 0) {
				MemberVO vo = loginDao.memberLogin(memberVO);
				result.put("data1", "로그인에 성공하였습니다.");
			} else {
				result.put("data1", "아이디와 비밀번호를 확인해주세요.");
			}

		}

		return result;
	}
}
