package com.biz.iolist.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.iolist.mapper.IolistDao;
import com.biz.iolist.model.IolistDto;
import com.biz.iolist.model.IolistVO;

@Service
public class IolistService {
	
	@Autowired
	SqlSession session;
	
	public List<IolistVO> selectAll() {
		
		IolistDao dao = session.getMapper(IolistDao.class);
		
		return dao.selectAll(); 
	}
	
	public List<IolistDto> selectJoin() {
		
		IolistDao dao = session.getMapper(IolistDao.class);
		
		return dao.iolistJoin();
	}
	
	public IolistVO findById(long id) {
		
		IolistDao dao = session.getMapper(IolistDao.class);
		
		return dao.findById(id); 
	}
	
	public int insert(IolistVO vo) {
		
		IolistDao dao = session.getMapper(IolistDao.class);
		
		return dao.insert(vo); 
	}
	
	public int update(IolistVO vo) {
		
		IolistDao dao = session.getMapper(IolistDao.class);
		
		return dao.update(vo); 
	}
	
	public int delete(long id) {
		
		IolistDao dao = session.getMapper(IolistDao.class);
		
		return dao.delete(id); 
	}
}
