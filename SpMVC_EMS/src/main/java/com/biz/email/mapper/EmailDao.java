package com.biz.email.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.UpdateProvider;

import com.biz.email.model.EmailVO;


public interface EmailDao {

	@Select("SELECT * FROM tbl_emails ORDER BY s_date DESC, s_time DESC")
	public List<EmailVO> selectAll();
	@Select("SELECT * FROM tbl_emails WHERE id = #{id}")
	public EmailVO findById(long id);
	
	@SelectKey(before=true,keyProperty="id",resultType=Long.class,
			statement=" SELECT ROUND(DBMS_RANDOM.VALUE(0,9999999999),0) FROM DUAL "
			)
	@InsertProvider(type=EmailSQL.class,method="email_insert_sql")
	public int insert(EmailVO vo);
	
	@UpdateProvider(type=EmailSQL.class,method="email_update_sql")
	public int update(EmailVO vo);
	
	@Delete("DELETE FROM tbl_emails WHERE id=#{id}")
	public int delete(long id);
}
