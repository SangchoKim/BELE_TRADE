package com.javac.bele.web.common.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javac.bele.web.common.Overlapping_common;
import com.javac.bele.web.common.service.mypage.MypageService;
import com.javac.bele.web.common.service.store.StoreService;

@RequestMapping(value="/mypage" )
@Controller
public class MypageController {

	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private Overlapping_common overlapping;
	
	@RequestMapping(value="/view", method = {RequestMethod.GET, RequestMethod.POST})
	public String MypageView(Model model, @RequestParam Map map, HttpSession session) {
		map.put("id", session.getAttribute("result"));
		List result = mypageService.MypageView(map);
		model.addAttribute("result", result);
		return "member/mypageview";
	}
	
	@RequestMapping(value="/auth_up", method = {RequestMethod.GET, RequestMethod.POST})
	public String MypageAuth_up(Model model, @RequestParam Map map, HttpSession session) throws Exception {
		map.put("id", session.getAttribute("result"));
		System.out.println(map);
		List result = mypageService.MypageView(map);
		if(result.isEmpty() || result == null) { 			
			return "common/err";
		}
		model.addAttribute("result", result);
		return "member/updateform";
	}
	
	@RequestMapping(value="/update", method = {RequestMethod.GET, RequestMethod.POST})
	public String MypageUpdate(Model model, @RequestParam Map map, HttpSession session) throws Exception {
		map.put("id", session.getAttribute("result"));
		String check = (String) map.get("password");
		if(check.isEmpty() || check == "") {
			map.put("password", null);
		}
		int count = mypageService.MypageModify(map);
		return overlapping.overlap_mypageModi(model, count);
	}
	
	@RequestMapping(value="/auth_de", method = {RequestMethod.GET, RequestMethod.POST})
	public String MypageAuth_de(Model model, @RequestParam Map map, HttpSession session) throws Exception {
		int count = mypageService.MypageDelete(map);
		return overlapping.overlap_mypageDele(model, count, session);
	}
	
	
}
