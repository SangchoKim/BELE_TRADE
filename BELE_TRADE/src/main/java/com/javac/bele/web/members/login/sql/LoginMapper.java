package com.javac.bele.web.members.login.sql;

import java.util.List;
import java.util.Map;

public interface LoginMapper {

	public List login_checked(Map map);
	public List showLogin(Map map);
	public List serchid(Map map);
	public List serchpw(Map map);
	public int updatepw(Map map);
}
