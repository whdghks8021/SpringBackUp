package com.biz.email.mapper;

import org.apache.ibatis.jdbc.SQL;

public class EmailSQL {

	public String email_insert_sql() {
		
		SQL sql = new SQL()
				.INSERT_INTO("tbl_emails")
				.INTO_COLUMNS("id").INTO_VALUES("#{id}")
				.INTO_COLUMNS("from_email").INTO_VALUES("#{from_email}")
				.INTO_COLUMNS("to_email").INTO_VALUES("#{to_email}")
				.INTO_COLUMNS("s_date").INTO_VALUES("#{s_date}")
				.INTO_COLUMNS("s_time").INTO_VALUES("#{s_time}")
				.INTO_COLUMNS("s_subject").INTO_VALUES("#{s_subject}")
				.INTO_COLUMNS("s_content").INTO_VALUES("#{s_content}")
				.INTO_COLUMNS("s_file1").INTO_VALUES("#{s_file1}")
				.INTO_COLUMNS("s_file2").INTO_VALUES("#{s_file2}");
		
		return sql.toString();
	}
	
	public String email_update_sql() {

		SQL sql = new SQL()
				.UPDATE("tbl_emails")
				.SET("from_email=#{from_email}")
				.SET("to_email=#{to_email}")
				.SET("s_date=#{s_date}")
				.SET("s_time=#{s_time}")
				.SET("s_subject=#{s_subject}")
				.SET("s_content=#{s_content}")
				.SET("s_file1=#{s_file1}")
				.SET("s_file2=#{s_file2}")
				.WHERE("id = #{id}");
	
		return sql.toString();
	}
}