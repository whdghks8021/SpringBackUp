package com.biz.iolist.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.iolist.mapper.DeptDao;
import com.biz.iolist.model.DeptVO;

@Service
public class DeptService {
	
	@Autowired
	SqlSession session;
	
	
	public List<DeptVO> selectAll() {
		
		DeptDao dao = session.getMapper(DeptDao.class);
		
		return dao.selectAll(); 
	}
	
	public String getDCode() {
		
		// tbl_dept에서 가장 큰 코드값을 가져오는 부분
		DeptDao dao = session.getMapper(DeptDao.class);
		String d_code = dao.getDCode();
		String new_dcode = "D0001";
		
		if(d_code != null) { // 테이블에 값이 없으면 null이 된다.
			d_code = d_code.substring(1); // 1번째 문자부터 잘라라 (0099)
			int temp_code = Integer.valueOf(d_code.trim()) + 1; // 100
			new_dcode = String.format("D%04d", temp_code); // %d 숫자(정수)를 표현
														   // %4d 왼쪽에 빈칸을두고 자릿수를 4개로 맞추어라
														   // %04d 왼쪽에 빈칸을 0으로 채워서 자릿수를 4개로 맞추어라
														   // 'D0100'이 new_dcode에 담기게 된다.
		}
		return new_dcode;
	}
	
	public String getDName(String d_code) {
		
		DeptDao dao = session.getMapper(DeptDao.class);
		DeptVO vo = dao.findByDCode(d_code);
		return vo.getD_name();
	}
	
	public DeptVO findByDCode(String d_code) {
		
		DeptDao dao = session.getMapper(DeptDao.class);
		
		return dao.findByDCode(d_code); 
	}
	
	public int insert(DeptVO vo) {
		
		DeptDao dao = session.getMapper(DeptDao.class);
		
		return dao.insert(vo); 
	}
	
	public int update(DeptVO vo) {
		
		DeptDao dao = session.getMapper(DeptDao.class);
		
		return dao.update(vo); 
	}
	
	public int delete(String d_code) {
		
		DeptDao dao = session.getMapper(DeptDao.class);
		
		return dao.delete(d_code); 
	}

	public List<DeptVO> findByDName(String d_name) {
		
		DeptDao dao = session.getMapper(DeptDao.class);
		
		return dao.findByDName(d_name);
	}
}
