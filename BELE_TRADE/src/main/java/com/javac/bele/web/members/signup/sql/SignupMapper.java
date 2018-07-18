package com.javac.bele.web.members.signup.sql;

import java.util.List;
import java.util.Map;

public interface SignupMapper {

	public List showSignup(Map map);
	public int addSignup(Map map);
	public Integer signup_checked(Map map); 
	public int updateSignup(Map map);
	public int deleteSignup(Map map);
}
