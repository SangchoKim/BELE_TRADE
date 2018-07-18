package com.javac.bele.web.members.signup.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javac.bele.web.members.signup.sql.SignupMapper;

@Repository
public class SignupDaoImp implements SignupDao {
	
	private static final Logger logger = LoggerFactory.getLogger(SignupDaoImp.class);
	
	@Autowired
	private SqlSession sqlsessoin;

	@Override
	public List showSignup(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addSignup(Map map) {		
		SignupMapper signupMapper = sqlsessoin.getMapper(SignupMapper.class);
		return signupMapper.addSignup(map);
	}
	
	@Override
	public Integer signup_checked(Map map) {
		SignupMapper signupMapper = sqlsessoin.getMapper(SignupMapper.class);
		return signupMapper.signup_checked(map);
	}


	@Override
	public int updateSignup(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSignup(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}


}
