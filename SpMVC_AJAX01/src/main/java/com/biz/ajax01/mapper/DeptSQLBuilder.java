package com.biz.ajax01.mapper;

// 2015년 이후 mybatis 3.1 에서 사용가능한 클래스
// 실무에서 사용 예를 못봤다.
import org.apache.ibatis.jdbc.SQL;

public class DeptSQLBuilder {
	
	public String getSelectAllSQL() {
		
		SQL sql = new SQL().SELECT("*").FROM("tbl_dept");
		
		return sql.toString();
	}
	public String getInsertSQL() {
		
		// SQLBuilder(Mybatis 3.4에서 새로 도입된 SQL 작성기
		// 1.7이하에서 컴파일 오류 가능성
		SQL sql = new SQL();
				sql.INSERT_INTO("tbl_dept");
				sql.INTO_COLUMNS("d_code");
				sql.INTO_VALUES("#{d_code}");
				
				sql.VALUES("d_name", "#{d_name}");
				sql.VALUES("d_ceo", "#{d_ceo}");
		
		return sql.toString();
	}
	
	public String getUpdateSQL() {
		SQL sql = new SQL().UPDATE("tbl_dept")
				.SET("d_code = #{d_code}")
				.SET("d_name = #{d_name}")
				.SET("d_ceo = {d_ceo}")
				.WHERE("d_code = #{d_code}");
		
		return sql.toString();
		
	}
	
	public String getDeleteSQL() {
		
		SQL sql = new SQL().DELETE_FROM("tbl_dept")
				.WHERE("d_code = #{d_code}");
		return sql.toString();
		
	}
}
