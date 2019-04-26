package com.biz.memo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.biz.memo.model.MemoVO;
import com.biz.memo.service.FileService;

/*
 * REST FULL API
 * 
 * RequestMethod를 구분하고 같은 이름의 RequestMapping으로
 * 마치 하나의 그룹인것처럼 취급하기 위한 API pattern으로
 *  
 * view를 담당하는 디자이너 입장에서 좀더 쉽게 개발자와 협업을 할수있도록
 * 만들어 주는 특징이 있다.
 */
@RestController
public class FileRestController {
	
	@Autowired
	FileService fService;
	
	@RequestMapping(value="files",method=RequestMethod.GET)
	public String file() {
		
		return "OK";
	}
	
	@RequestMapping(value="files",method=RequestMethod.POST)
	public String file(@ModelAttribute MemoVO memoVO) {
		
		return "OK";
	}
	
	@RequestMapping(value="files",method=RequestMethod.PUT)
	public String file(@ModelAttribute MemoVO memoVO, long id) {
		
		return "OK";
	}
	
	@RequestMapping(value="files",method=RequestMethod.DELETE,produces="text/html;charset=utf8")
	public String file(@RequestParam long id) {

		
		int ret = fService.delete(id);
		
		if(ret > 0) return "삭제성공";
		else return "삭제실패";
	}
	
}
