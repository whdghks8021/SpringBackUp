package com.biz.memo02.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.memo02.dao.MemberDao;
import com.biz.memo02.vo.CodeVO;
import com.biz.memo02.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	MemberDao memberDao;
	
	public List<CodeVO> getCities() {
		List<CodeVO> cities = new ArrayList<CodeVO>();
		
		cities.add(new CodeVO("GWANGJU", "광주광역시"));
		cities.add(new CodeVO("SEOUL", "서울특별시"));
		cities.add(new CodeVO("BUSAN", "부산광역시"));
		cities.add(new CodeVO("INCHUN", "인천광역시"));
		cities.add(new CodeVO("JEJU", "제주특별자치도"));
		cities.add(new CodeVO("DAEJUN", "대전광역시"));
		cities.add(new CodeVO("DAEGU", "대구광역시"));
		
		return cities;
	}
	public Map<String,String> getCitiesMap() {
		
		Map<String,String> cities = new HashMap<String,String>();
		cities.put("GWANGJU", "광주광역시");
		cities.put("SEOUL", "서울특별시");
		cities.put("BUSAN", "부산광역시");
		cities.put("INCHUN", "인천광역시");
		cities.put("JEJU", "제주특별자치도");
		cities.put("DAEJUN", "대전광역시");
		cities.put("DAEGU", "대구광역시");
		
		return cities;
	}
	
	
	public List<String> getCitiesList() {
		
		List<String> cities = new ArrayList<String>();
		cities.add("광주광역시");
		cities.add("서울특별시");
		cities.add("부산광역시");
		cities.add("제주특별자치도");
		cities.add("인천광역시");
		cities.add("대전광역시");
		cities.add("대구광역시");
		
		return cities;
	}
	public List<CodeVO> getHobbies() {
		List<CodeVO> hobbies = new ArrayList<CodeVO>();
		hobbies.add(new CodeVO("BOOK", "독서"));
		hobbies.add(new CodeVO("MOVIE", "영화감상"));
		hobbies.add(new CodeVO("MOUNT", "등산"));
		hobbies.add(new CodeVO("GAME", "게임"));
		hobbies.add(new CodeVO("MUSIC", "음악감상"));
		
		return hobbies;
	}
	
	public Map<String,String> getHobbiesMap() {
		
		Map<String,String> hobbies = new HashMap<String,String>();
		hobbies.put("BOOK", "독서");
		hobbies.put("MOVIE", "영화감상");
		hobbies.put("MOUNT", "등산");
		hobbies.put("GAME", "게임");
		hobbies.put("MUSIC", "음악감상");
		
		return hobbies;
	}
	
	public List<String> getHobbiesList() {
		List<String> hobbies = new ArrayList<String>();
		hobbies.add("독서");
		hobbies.add("등산");
		hobbies.add("음악감상");
		hobbies.add("영화감상");
		hobbies.add("게임");
		
		return hobbies;
	}
	public int insert(MemberVO vo) {
		// TODO Auto-generated method stub
		int ret = memberDao.insert(vo);
		return ret;
	}
	public MemberVO userCheck(MemberVO vo) {
		MemberVO membervo = memberDao.userCheck(vo.getM_userid(),vo.getM_password());
		return membervo;
	}
}
