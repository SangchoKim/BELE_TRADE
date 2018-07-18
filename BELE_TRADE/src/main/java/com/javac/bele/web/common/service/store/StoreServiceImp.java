package com.javac.bele.web.common.service.store;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.javac.bele.web.common.Overlapping_common;
import com.javac.bele.web.common.dao.store.StoreDao;

@Transactional(readOnly = true)
@Repository
public class StoreServiceImp implements StoreService {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreServiceImp.class);
		
	@Autowired
	private StoreDao boardDao;
	
	@Autowired
	private Overlapping_common overlapping;
	
	@Override
	public List showBoard(Map map,int offset, int noOfRecords) throws Exception {
		map.put("offset", offset);
		map.put("noOfRecords", noOfRecords);
		return boardDao.showBoard(map);	 
	}
	
	@Override
	public int writeGetCount(Map map) throws Exception {
		return boardDao.writeGetCount(map);
	}
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public int reviewNum(Map map) throws Exception {
		return overlapping.overlap_2(boardDao.reviewNum(map));
	}
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public int writeBoard(Map map) {
		return overlapping.overlap_2(boardDao.writeBoard(map));
	}
	
	@Override
	public List showform(Map map) {
		return boardDao.showform(map);
	}
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public int updateBoard(Map map) {
		return overlapping.overlap_2(boardDao.updateBoard(map));
	}

	@Override
	public int deleteBoard(Map map) {
		return  overlapping.overlap_2(boardDao.deleteBoard(map));
	}

	@Override
	public List storeSearch(Map map){
		return boardDao.storeSearch(map);
	}




}
