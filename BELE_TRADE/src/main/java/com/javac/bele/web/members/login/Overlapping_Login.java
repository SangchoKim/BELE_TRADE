package com.javac.bele.web.members.login;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;


@Transactional(readOnly = true)
@Repository
public class Overlapping_Login {
	
	private static final Logger logger = LoggerFactory.getLogger(Overlapping_Login.class);
	
//	��Ʈ�ѷ� �ߺ� �ҽ� 1	
	public String overlap_1( Model model , int result) {
		
	String forward = "common/alert";
		
		if (result == 1) {
			model.addAttribute("YES", "yes");
			
		} else {
			model.addAttribute("NO", "no");
		}
		model.addAttribute("forward", "/");
		
		return forward;
	}
	
//	���� �ߺ� �ҽ� 1 
	public Integer overlap_2(Integer result) {
		
		if(result == null ) {
			System.out.println("Fail");
		}else{
			
			System.out.println("Success");
		}	
		return result;		
	}
		
//	��Ʈ�ѷ� �ߺ� �ҽ� 2
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
	public String overlap_3(Model model , int result) {		
	String forward = "mypage/common/alert";
	 		
		if (result == 0) {
			model.addAttribute("NO", "no");
			model.addAttribute("forward", "/");		
			return forward;
		}
		return null;
	}
	
//	��Ʈ�ѷ� �ߺ� �ҽ� 3	
	public Map overlap_4(Map map) {		
		map.put("col", "campsite_name");
		map.put("value", map.get("campsite_name"));	
			return map;
		}
//	��Ʈ�ѷ� �ߺ� �ҽ� 1	
	public String overlap_host_1( Model model , int result) {
		
	String forward = "mypage/common/alert";
		
		if (result == 1) {
			model.addAttribute("YES", "yes");
		} else {
			model.addAttribute("NO", "no");
		}
		model.addAttribute("forward", "/");
		
		return forward;
	}
}
