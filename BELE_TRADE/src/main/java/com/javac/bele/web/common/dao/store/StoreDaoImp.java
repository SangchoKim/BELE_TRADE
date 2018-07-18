package com.javac.bele.web.common.dao.store;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javac.bele.web.common.sql.store.StoreMapper;



@Repository
public class StoreDaoImp implements StoreDao {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreDaoImp.class);
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List showBoard(Map map) {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		 return mapper.showBoard(map);
	}
	

	
	@Override
	public int writeGetCount(Map map) {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		return mapper.writeGetCount(map);
	}
	
	@Override
	public int reviewNum(Map map) throws Exception {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		return mapper.reviewNum(map);
	}

	@Override
	public int writeBoard(Map map) {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		return mapper.writeBoard(map);
	}
	
	
	@Override
	public List showform(Map map) {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		return mapper.showform(map);
	}

	@Override
	public int updateBoard(Map map) {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		return mapper.updateBoard(map);
	}

	@Override
	public int deleteBoard(Map map) {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		return mapper.deleteBoard(map);
	}

	@Override
	public List storeSearch(Map map) {
		StoreMapper mapper = sqlsession.getMapper(StoreMapper.class);
		return mapper.storeSearch(map);
	}







}
