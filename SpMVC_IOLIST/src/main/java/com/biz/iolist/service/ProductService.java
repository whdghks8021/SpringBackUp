package com.biz.iolist.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.iolist.mapper.IolistDao;
import com.biz.iolist.mapper.ProductDao;
import com.biz.iolist.model.IolistVO;
import com.biz.iolist.model.ProductVO;

@Service
public class ProductService {
	

	@Autowired
	SqlSession session;
	
	public List<ProductVO> selectAll() {
		
		ProductDao dao = session.getMapper(ProductDao.class);
		
		return dao.selectAll(); 
	}
	
	public String getPName(String p_code) {
		
		ProductDao dao = session.getMapper(ProductDao.class);
		ProductVO vo = dao.findByPCode(p_code);
		
		return vo.getP_name(); 
	}
	
	public ProductVO findByPCode(String p_code) {
		
		ProductDao dao = session.getMapper(ProductDao.class);
		
		return dao.findByPCode(p_code); 
	}
	
	public int insert(ProductVO vo) {
		
		ProductDao dao = session.getMapper(ProductDao.class);
		
		return dao.insert(vo); 
	}
	
	public int update(ProductVO vo) {
		
		ProductDao dao = session.getMapper(ProductDao.class);
		
		return dao.update(vo); 
	}
	
	public int delete(String p_code) {
		
		ProductDao dao = session.getMapper(ProductDao.class);
		
		return dao.delete(p_code); 
	}

	public List<ProductVO> findByPName(String p_name) {
		
		ProductDao dao = session.getMapper(ProductDao.class);
		
		return dao.findByPName(p_name);
	}
}
