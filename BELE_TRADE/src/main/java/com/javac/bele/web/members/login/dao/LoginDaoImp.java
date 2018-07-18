package com.javac.bele.web.members.login.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javac.bele.web.members.login.sql.LoginMapper;

@Repository
public class LoginDaoImp implements LoginDao {

	private static final Logger logger = LoggerFactory.getLogger(LoginDaoImp.class);
	
	@Autowired
	private SqlSession sqlsessoin;
	
	@Override
	public List login_checked(Map map) {
		LoginMapper mapper = sqlsessoin.getMapper(LoginMapper.class);
		return mapper.login_checked(map);
	}
	
	@Override
	public List showLogin(Map map) {
		LoginMapper mapper = sqlsessoin.getMapper(LoginMapper.class);
		return mapper.showLogin(map);
	}

	@Override
	public List serchid(Map map) {
		LoginMapper mapper = sqlsessoin.getMapper(LoginMapper.class);
		return mapper.serchid(map);
	}

	@Override
	public List serchpw(Map map) {
		LoginMapper mapper = sqlsessoin.getMapper(LoginMapper.class);
		return mapper.serchpw(map);
	}

	@Override
	public int updatepw(Map map) throws Exception {
		LoginMapper mapper = sqlsessoin.getMapper(LoginMapper.class);
		return mapper.updatepw(map);
	}


}
