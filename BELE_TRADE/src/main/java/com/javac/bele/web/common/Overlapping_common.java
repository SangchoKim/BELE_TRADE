package com.javac.bele.web.common;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;


@Transactional(readOnly = true)
@Repository
public class Overlapping_common {
	
	private static final Logger logger = LoggerFactory.getLogger(Overlapping_common.class);
	
//	��Ʈ�ѷ� �ߺ� �ҽ� 1	
	public String overlap_write( Model model , int result, Map map) {
		
	String forward = "common/alert";
		
		if (result == 1 ) {
			model.addAttribute("YES", "yes");
		} else {
			model.addAttribute("NO", "no");
		}
		model.addAttribute("store_seq", map.get(0));
		model.addAttribute("forward", "showform");
		model.addAttribute("number", "0");
		return forward;
	}
	
//	��Ʈ�ѷ� �ߺ� �ҽ� 2	
	public String overlap_update( Model model , int result, Map map) {
		
	String forward = "common/alert";
		
		if (result == 1) {
			model.addAttribute("YES", "yes");
		} else {
			model.addAttribute("NO", "no");
		}
		model.addAttribute("just", map.get("just"));
		model.addAttribute("forward", "storeshow?just=");
		model.addAttribute("number", "1");
		return forward;
	}
	
//	��Ʈ�ѷ� �ߺ� �ҽ� 3	
	public String overlap_delete( Model model , int result, Map map) {
		
	String forward = "common/alert";
		
		if (result == 1) {
			model.addAttribute("YES", "yes");
		} else {
			model.addAttribute("NO", "no");
		}
		model.addAttribute("just", map.get("just"));
		model.addAttribute("forward", "storeshow?just=");
		model.addAttribute("number", "2");		
		return forward;
	}
	
	public String storeSearch( Model model , Map map) {
		
		String forward = "common/alert";
				
			model.addAttribute("YES", "yes");
			model.addAttribute("just", map.get("just"));
			model.addAttribute("forward", "storeshow?just=");
			model.addAttribute("number", "4");		
			return forward;
		}
	
//	���� �ߺ� �ҽ� 1 
	public int overlap_2(int result) {
		
		if(result == 1) {
			System.out.println("Success");
		}else{
			System.out.println("Fail");
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
	
	public String overlap_mypageModi( Model model , int result) {
		
		String forward = "common/alert";
			
			if (result == 1) {
				model.addAttribute("YES", "yes");
			} else {
				model.addAttribute("NO", "no");
			}
			model.addAttribute("forward", "view");
			model.addAttribute("number", "5");	
			return forward;
		}
	
public String overlap_mypageDele( Model model , int result, HttpSession session) {
		
		String forward = "common/alert";
			
			if (result == 1) {
				model.addAttribute("YES", "yes");
				session.removeAttribute("result");
				session.invalidate();
			} else {
				model.addAttribute("NO", "no");
			}
			model.addAttribute("forward", "/");
			model.addAttribute("number", "6");	
			return forward;
		}
}
