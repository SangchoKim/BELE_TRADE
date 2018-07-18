package com.javac.bele.web.members.signup.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.javac.bele.web.members.signup.Overlapping_Signup;
import com.javac.bele.web.members.signup.dao.SignupDao;

@Transactional(readOnly=true)
@Service
public class SignupServiceImp implements SignupService {

	private static final Logger logger = LoggerFactory.getLogger(SignupServiceImp.class);
	
	@Autowired
	private SignupDao signupdao;
	
	@Autowired
	private Overlapping_Signup overlapping_signup;
	
	@Override
	public List showSignup(Map map) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor = Exception.class)
	@Override
	public int addSignup(Map map) throws Exception {
		int count = signupdao.addSignup(map);
		return overlapping_signup.overlap_2(count);
		
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor = Exception.class)
	@Override
	public Integer signup_checked(Map map) throws Exception {
		return overlapping_signup.overlap_2(signupdao.signup_checked(map));
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor = Exception.class)
	@Override
	public int updateSignup(Map map) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSignup(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}


}
