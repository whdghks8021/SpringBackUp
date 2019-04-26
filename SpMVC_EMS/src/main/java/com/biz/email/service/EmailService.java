package com.biz.email.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.email.mapper.EmailDao;
import com.biz.email.model.EmailVO;

@Service
public class EmailService {

	@Autowired
	EmailDao eDao ;
	
	public List<EmailVO> selectAll() {
		
		return eDao.selectAll();
	}

	public EmailVO findById(long id) {
		
		return eDao.findById(id);
	}

	public int update(EmailVO emailVO) {
		
		return eDao.update(emailVO);
	}

	public int insert(EmailVO emailVO) {
		
		return eDao.insert(emailVO);
	}

	public int delete(long id) {
		
		return eDao.delete(id);
	}

	
}
