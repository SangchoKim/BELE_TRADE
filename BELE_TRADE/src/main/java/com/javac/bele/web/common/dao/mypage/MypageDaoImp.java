package com.javac.bele.web.common.dao.mypage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javac.bele.web.common.sql.mypage.MypageMapper;

@Repository
public class MypageDaoImp implements MypageDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageDaoImp.class);
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public List MypageView(Map map) {
		MypageMapper mapper = sqlsession.getMapper(MypageMapper.class);
		return mapper.MypageView(map);
	}

	@Override
	public int MypageModifyAut(Map map) {
		MypageMapper mapper = sqlsession.getMapper(MypageMapper.class);
		return mapper.MypageModifyAut(map);
	}

	@Override
	public int MypageModify(Map map) {
		MypageMapper mapper = sqlsession.getMapper(MypageMapper.class);
		return mapper.MypageModify(map);
	}

	@Override
	public int MypageDelete(Map map) {
		MypageMapper mapper = sqlsession.getMapper(MypageMapper.class);
		return mapper.MypageDelete(map);
	}

}
