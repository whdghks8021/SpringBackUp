package com.biz.sim.service;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.biz.sim.vo.InoutVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class InoutService {

	String fileName = "Inout.txt";
	
	/*
	 * inout.txt 파일을 읽어서
	 * 각 라인을 split으로 분해한후
	 * 항목별로 vo에 담고,
	 * List<InoutVO>에 추가해서
	 * 상품매입매출 List를 생성
	 */
	public List<InoutVO> getInout() {
		// src/main/resources 폴더에 있는 fileName 정보를 가져와라
		ClassPathResource rs = new ClassPathResource(fileName);
		// FileReader의 새로운 버전
		// 1.8(1.7)이상에서 파일이나 네트워크를 통해서 정보(내용)을 읽을때 사용
		InputStreamReader is ;
		
//		FileReader fr ;
		BufferedReader buffer ;
		List<InoutVO> ioList = new ArrayList();
		
		try {
			is = new InputStreamReader(rs.getInputStream());
			buffer = new BufferedReader(is);
			
			while(true) {
				String read = buffer.readLine();
				if(read == null) break;
				InoutVO vo = new InoutVO();
				String[] reads = read.split(":");
				String time = reads[1] + reads[2] + reads[3];
				
				vo.setIo_date(reads[0]);
				vo.setIo_time(time);
				vo.setIo_cname(reads[4]);
				vo.setIo_check(reads[5]);
				vo.setIo_price(Integer.valueOf(reads[6]));
				vo.setIo_su(Integer.valueOf(reads[7]));
				
				log.debug(vo.toString());
				
				ioList.add(vo);
				
			}
			buffer.close();
			is.close();
			
			return ioList;
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	// 1.8 이상에서만 사용가능 코드
	public List<InoutVO> getIolist() {
		
		ClassPathResource rs = new ClassPathResource(fileName);
		Path path ; // Resource 정보에서 인터넷 주소개념의 file 정보를 추출
		try {
			path = Paths.get(rs.getURI());
			List<String> lines = Files.readAllLines(path);
			List<InoutVO> ioList = new ArrayList<InoutVO>();
			for(String Line : lines) {
				String[] reads = Line.split(":");
				String time = reads[1] + reads[2] + reads[3];
				
				InoutVO vo = new InoutVO();
				vo.setIo_date(reads[0]);
				vo.setIo_time(time);
				vo.setIo_cname(reads[4]);
				vo.setIo_check(reads[5]);
				vo.setIo_price(Integer.valueOf(reads[6]));
				vo.setIo_su(Integer.valueOf(reads[7]));
				
				ioList.add(vo);
				return ioList;
			}
			
			for(InoutVO vo : ioList) {
				log.debug(vo.toString());
			}
			// 1.8 버전용 for
//			ioList.forEach(log::debug);
//			for(String Line : ioList) {log.debug(Line);};
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
