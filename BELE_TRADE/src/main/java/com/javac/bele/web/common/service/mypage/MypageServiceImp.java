package com.javac.bele.web.common.service.mypage;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.javac.bele.web.common.dao.mypage.MypageDao;

@Transactional(readOnly = true)
@Repository
public class MypageServiceImp implements MypageService {

	private static final Logger logger = LoggerFactory.getLogger(MypageServiceImp.class);
	
	@Autowired
	MypageDao mypagedao;
	
	@Override
	public List MypageView(Map map) {		
		return mypagedao.MypageView(map);
	}

	@Override
	public int MypageModifyAut(Map map) throws Exception {
		return 0;
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	@Override
	public int MypageModify(Map map) throws Exception {
		return mypagedao.MypageModify(map);
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	@Override
	public int MypageDelete(Map map) throws Exception {
		return mypagedao.MypageDelete(map);
	}

}
