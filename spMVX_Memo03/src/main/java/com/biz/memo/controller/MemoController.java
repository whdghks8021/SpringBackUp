package com.biz.memo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.biz.memo.model.MemberVO;
import com.biz.memo.model.MemoVO;
import com.biz.memo.service.MemoService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemoController {
	
	@Autowired
	MemoService mService;
	
	@RequestMapping(value="memo",method=RequestMethod.GET)
	public String memo(HttpSession session,Model model) {
		
		return "bodys/memo_form";
	}
	
	@RequestMapping(value="memo",method=RequestMethod.POST)
	public String memo(@ModelAttribute MemoVO memoVO,Model model) {
		
		log.debug(memoVO.toString());
		int ret = mService.save(memoVO);
		return "bodys/memo_list";
	}
	
	@RequestMapping(value="memo_list1",method=RequestMethod.GET)
	public ModelAndView memo_list1() {
		
		ModelAndView mv = new ModelAndView();
		List<MemoVO> memoList = mService.selectAll();
		mv.setViewName("bodys/memo_list");
		mv.addObject("MEMOS",memoList);
		
		return mv;
	}
	
	@RequestMapping(value="memo_list2",method=RequestMethod.GET)
	public String memo_list2(Model model) {
		
		List<MemoVO> memoList = mService.selectAll();
		model.addAttribute("MEMOS",memoList);
		
		return "bodys/memo_card_list";
	}
	
	@RequestMapping(value="memo_list",method=RequestMethod.GET)
	public String memo_list(HttpSession session, Model model) {
		
		MemberVO mVO = (MemberVO)session.getAttribute("LOGIN_INFO");
		String userid = mVO.getM_userid();
		
		List<MemoVO> memoList = mService.selectByUserId(userid);
		model.addAttribute("MEMOS",memoList);
		
		return "bodys/memo_card_list";
	}
	
	@RequestMapping(value="memo_view", method=RequestMethod.GET)
	public String memo_view(@RequestParam long id, Model model) {
		
		MemoVO vo = mService.findById(id);
		model.addAttribute("MEMO",vo);
		
		return "bodys/memo_form";
	}


}