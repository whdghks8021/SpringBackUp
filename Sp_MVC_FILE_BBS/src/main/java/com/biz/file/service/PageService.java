package com.biz.file.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.file.mapper.PageDao;
import com.biz.file.model.BoardVO;
import com.biz.file.model.PageVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PageService {

	@Autowired
	PageDao pDao;
	
	public long getCount() {
		return pDao.getCount();
	}
	
	public List<BoardVO> pagiList(PageVO pageVO){

		long c = pDao.getCount();
		
		log.debug("현재페이지" + pageVO.getCurrentPageNo());
		log.debug("페이지내용수" + pageVO.getListPerPage());
		long currNo = pageVO.getCurrentPageNo() - 1 ;
		
		long sRow = currNo * pageVO.getListPerPage() + 1; // 1page = 1 , 2page = 11
		long eRow = sRow + pageVO.getListPerPage() - 1;
		
		log.debug("COUNT" + c);
		
		log.debug("sRow" + sRow);
		log.debug("eRow" + eRow);
		
		List<BoardVO> bbsList = pDao.selectPage2(sRow, eRow);
		return bbsList;
		
	}
	
	public PageVO page_select(long page_no) {
		
		// 전체 데이터의 개수
		long totalCount = pDao.getCount();
		
		// 데이터가 없을 경우 종료
		if(totalCount == 0) return null;

		log.debug("page_no"+ page_no);
		// if(page_no == 0) page_no = 1 ; 

		// 한페이지에 보여질 리스트 개수
		long listPerPage = 10;
		
		// 전체데이터 개수를 한페이제 보여질 리스트 개수로 나누어서
		// 총 몇페이지의 데이터가 있는지 계산
		// +1 : 데이터의 개수가 정확히 나눗셈하여 떨어지지 않을 경우
		// 끝에 한페이지가 채워지지 않은 데이터가 있으는 것이므로
		// 페이지 수를 1개 늘려놓는다.
		long totalPage = (long)(totalCount / listPerPage) + 1;
		long currPage = page_no;
		
		PageVO pageVO = new PageVO();
		pageVO.setTotalCount(totalCount);
		pageVO.setListPerPage(listPerPage);
		pageVO.setCurrentPageNo(currPage);
		pageVO.setFinalPageNo(totalPage);
		
		long finalPage 
		= (totalCount + (listPerPage -1)) / listPerPage; 
		
		boolean isNowFirst 
			= currPage == 1 ? true: false; // currPage == 1 이면 true 아니면 false
		
		boolean isNowFinal 
			= currPage == finalPage ? true : false;
		
		long startPage 
			= ((currPage - 1) / listPerPage) * listPerPage + 1;
		
		long endPage = startPage + listPerPage - 1;
		
		if(endPage > finalPage) endPage = finalPage;
		
		pageVO.setFirPageNo(1);
		if(isNowFirst) pageVO.setPrePageNo(1);
		else pageVO.setPrePageNo((currPage -1) < 1 ? 1 : currPage - 1);
		
		pageVO.setStartUpPageNo(startPage);
		pageVO.setEndPageNo(endPage);
		
		if(isNowFinal) pageVO.setNextPageNo(finalPage);
		else pageVO.setNextPageNo(((currPage + 1) > finalPage ? finalPage : (currPage + 1)));

		pageVO.setFirPageNo(finalPage);
		
		return pageVO;
	}
	
}