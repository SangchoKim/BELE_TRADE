package com.javac.bele.web.members.signup.service;

import java.util.List;
import java.util.Map;

public interface SignupService {

	public List showSignup(Map map);
	public int addSignup(Map map) throws Exception;
	public Integer signup_checked(Map map) throws Exception;
	public int updateSignup(Map map) throws Exception;
	public int deleteSignup(Map map);
}
