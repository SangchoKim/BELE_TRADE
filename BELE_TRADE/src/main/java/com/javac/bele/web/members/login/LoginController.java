package com.javac.bele.web.members.login;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.javac.bele.web.members.login.service.LoginService;



@RequestMapping(value="/members")
@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private LoginService loginservice;
	
	@RequestMapping(value ="/login_checked", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public String login_checked(Model model, @RequestParam Map map, HttpSession httpSession) {
		List count = loginservice.login_checked(map);
		Gson gson = new Gson();
		if(count.isEmpty()|| count == null) {
			return gson.toJson(count);	
		}
		httpSession.setAttribute("id", map.get("id"));
		return gson.toJson(count); 
	
	}
	
	@RequestMapping(value ="/login", method = {RequestMethod.POST, RequestMethod.GET})
	public String login(Model model, @RequestParam Map map, HttpSession httpSession) {
		map.put("id", httpSession.getAttribute("id"));
		List result = loginservice.showLogin(map);
		httpSession.setAttribute("result", result.get(0));
		model.addAttribute("result", result);
		return "home";
	}
	
	@RequestMapping(value ="/logout", method = {RequestMethod.POST, RequestMethod.GET})
	public String logout(HttpServletRequest req, HttpSession httpSession) {
		httpSession.removeAttribute("result");
		httpSession.invalidate();
		return "home";
		
	}
	
	@RequestMapping(value ="/login_alert", method = {RequestMethod.POST, RequestMethod.GET})
	public String login_alert() {		
		return "common/login_alert";
		
	}
	
	@RequestMapping(value ="/serchidform", method = {RequestMethod.POST, RequestMethod.GET})
	public String serchidform() {		
		return "member/serchidform";
		
	}
	
	@RequestMapping(value ="/serchid", method = {RequestMethod.POST, RequestMethod.GET})
	public String serchid(Model model, @RequestParam Map map, HttpSession httpSession) {
		String mail = (String) map.get("mail");
		String phone_no = (String) map.get("phone_no");
		if(mail == "") map.put("mail", null);
		else if(phone_no == "") map.put("phone_no", null);
		else if(mail == "" && phone_no == "" ) return "common/err2";
		List result =loginservice.serchid(map);
		if(result.isEmpty() || result == null) return "common/err2";
		model.addAttribute("result", result);
		return "member/serchid";
		
	}
	
	@RequestMapping(value ="/serchpwform", method = {RequestMethod.POST, RequestMethod.GET})
	public String serchpwform() {		
		return "member/serchpwform";
		
	}
	
	@RequestMapping(value ="/serchpw", method = {RequestMethod.POST, RequestMethod.GET})
	public String serchpw(Model model, @RequestParam Map map, HttpSession httpSession) throws Exception {
		List result = loginservice.serchpw(map);
		if(result.isEmpty() || result == null) return "common/err2";
		Map map1 =  (Map) result.get(0);
		String pw = (String) map1.get("password");
		String id = (String) map1.get("id");
		String tmp = getUuid() + pw;
		map1.put("password", tmp);
		map1.put("id", id);
		int count = loginservice.updatepw(map1);
		if(count != 1) return "common/err2";
		model.addAttribute("result", result);
		return "member/serchpw";
		
	}
	
	public static String getUuid() {

		return UUID.randomUUID().toString().replaceAll("-", ""); 
		
	}
	
}
