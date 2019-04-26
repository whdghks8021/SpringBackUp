package com.biz.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.member.model.MemberVO;
import com.biz.member.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	MemberService mService;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(Model model, String LOGIN_MSG) {
		
		model.addAttribute("BODY","LOGIN-FORM");
		model.addAttribute("LOGIN_MSG",LOGIN_MSG);
		return "member-home" ;
	}
	
	/*
	 * 로그인, 로그아웃을 처리할 method에는 
	 * HttpSessio 클래스를 매개변수로 설정 해 두어야 한다.
	 */
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(HttpSession session, 
				@ModelAttribute MemberVO memberVO,
				Model model) {

		// memberVO에는 로그인 폼에서 
		// 입력한 id와 비밀번호만 담겨 있을 것이다.
		String userid = memberVO.getM_userid();
		String password = memberVO.getM_password();
		
		// userid로 DB 조회를 해서 사용자 정보를 추출
		// BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder(16);
		List<MemberVO> mList = mService.loginCheck(userid);
		// mList에는 userid에 해당하는 사용자(들)이 포함되있다.
		boolean login_ok = false;
		String ret = "redirect:/";
		if(mList != null) {
			for(MemberVO vo : mList) {
				// vo의 M_password의 담겨있는 비밀번호는 Bcrypt 암호문이다.
				// 이 암호문을 로그인 폼에서 입력한 비밀번호와
				// == 이나 equels() 으로는 비교할 수 없다.
				// 그래서 Bcrypt... 클래스에 있는 암호 비교 method를 통해서 값을 비교한다.
				if(passwordEncoder.matches(password, vo.getM_password())) {
					login_ok = true;
					memberVO = vo;
					memberVO.setM_role("ADMIN");
					break;
				}
			}
			
			if(login_ok) {
				
				// 이 프로젝트가 서버에서 실행되고 있는 동안에
				// 같은 웹브라우저 페이지에서
				// req, res 중일때 어디에서나
				// LOGIN이라는 변수를 통해서 memberVO내용을 조회 할 수 있게된다.
				session.setAttribute("LOGIN_INFO", memberVO);
			} else {
				ret = "redirect:login";
				model.addAttribute("LOGIN_MSG","FAIL");
			}
		} 
		return ret;
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		
		// 혹시모를 시스템에서 사용하는 세션 정보가 있을경우에
		// login 정보만 삭제를 한다.
		session.setAttribute("LOGIN_INFO", null); // 값을 null 해서 삭제된것처럼
		session.removeAttribute("LOGIN_INFO"); // 값을 아예 삭제
		session.invalidate(); // 모든 session 정보를 삭제
		return "redirect:/" ;
	}
}
