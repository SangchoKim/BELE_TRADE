package com.javac.bele.web.members.signup;

import java.util.Map;

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
import com.javac.bele.web.members.signup.Overlapping_Signup;
import com.javac.bele.web.members.signup.service.SignupService;


@RequestMapping(value="/members")
@Controller
public class SignupController {
	
	private static final Logger logger = LoggerFactory.getLogger(SignupController.class);

	@Autowired
	private SignupService signupservice;
	
	@Autowired
	private Overlapping_Signup overlapping_signup;
	
	@RequestMapping(value = "/add_signup", method = {RequestMethod.POST, RequestMethod.GET})
	public String addSignUp(Model model, @RequestParam Map map) throws Exception {
		String birth = (String) map.get("birthdate");
		birth += "-" + (String) map.get("birthmonth");
		birth += "-" + (String) map.get("birthyear");
		map.put("birth", birth);
		
		int count = signupservice.addSignup(map);			
		return overlapping_signup.overlap_1(model, count);
	}
	
	@RequestMapping(value = "/signup_checked", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public String signup_checked(Model model, @RequestParam Map map) throws Exception {
		Integer count = signupservice.signup_checked(map);	
		return new Gson().toJson(count);
	}
}
