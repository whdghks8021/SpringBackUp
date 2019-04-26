package com.biz.memo02;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.memo02.service.MemberService;
import com.biz.memo02.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService mService;
	
	@RequestMapping(value="member", method=RequestMethod.GET)
	public String member(Model model) {
		model.addAttribute("CITIES", mService.getCities());
		model.addAttribute("HOBBIES", mService.getHobbies());
		model.addAttribute("BODY","MEMBER_JOIN");
		model.addAttribute("memberVO",new MemberVO());
		return "member_write";
	}
	
	/*
	 * ModelAttribute Annotation은 form으로 부터 전송되어온
	 * 데이터들을 VO에 자동으로 mapping 시키는 command Annotation이다.
	 * 
	 * 이 Annotation은 반드시 VO 앞에 위치시켜야 한다.
	 */
	@RequestMapping(value="member", method=RequestMethod.POST)
	public String member(@ModelAttribute MemberVO vo, Model model) {
		
		mService.insert(vo);
		model.addAttribute("BODY","MEMBER_VIEW");
		model.addAttribute("MEMBER", vo);
		return "home";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(Model model) {
		
		model.addAttribute("BODY", "LOGIN");
		model.addAttribute("memberVO", new MemberVO());
		return "home";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(@ModelAttribute MemberVO memberVO, Model model, HttpSession session) {
		/*
		 * 서비스의 userCheck에게 vo를 전달하고
		 * Dao의 userCheck를 사용해서 id와 password를 조회하고
		 * 결과를 return 받아서 vo에 담았다.
		 * 
		 * 만약 id와 password가 일치하면
		 * vo는 member 데이터를 갖고 있을 것이고
		 * 그렇지않으면 null 값을 갖게 된다.
		 * 
		 * 즉, vo가 null이면 login 실패
		 * 아니면 로그인 성공이 된다.
		 * 
		 */
		
		String ret = "";
		MemberVO vo = mService.userCheck(memberVO);
		if(vo == null) {
			ret = "로그인 실패";
		} else {
			ret = "로그인 성공";
			session.setAttribute("LOGIN", vo);
		}
		System.out.println(ret);
		
		return "redirect:memo_home";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("LOGIN");
		return "redirect:memo_home";
	}
}
