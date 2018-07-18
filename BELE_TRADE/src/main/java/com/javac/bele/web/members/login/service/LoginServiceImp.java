package com.javac.bele.web.members.login.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.javac.bele.web.members.login.Overlapping_Login;
import com.javac.bele.web.members.login.dao.LoginDao;


@Transactional(readOnly=true)
@Service
public class LoginServiceImp implements LoginService {

	private static final Logger logger = LoggerFactory.getLogger(LoginServiceImp.class);
	
	@Autowired
	private LoginDao logindao;
	
	@Autowired
	private Overlapping_Login overlapping_login;
	
	@Override
	public List login_checked(Map map) {
		return logindao.login_checked(map);
	}
	
	@Override
	public List showLogin(Map map) {		
		return logindao.showLogin(map);
	}

	@Override
	public List serchid(Map map) {
		return logindao.serchid(map);
	}

	@Override
	public List serchpw(Map map) {
		return logindao.serchpw(map);
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	@Override
	public int updatepw(Map map) throws Exception{
		return logindao.updatepw(map);
	}


}
