package com.javac.bele.web.common.service.store;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(readOnly = true)
public interface StoreService {

	public List showBoard(Map map,int offset, int noOfRecords) throws Exception;
	public int writeGetCount(Map map) throws Exception;
	public int reviewNum(Map map) throws Exception;
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public int writeBoard(Map map) throws Exception;
	public List showform(Map map);
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public int updateBoard(Map map) throws Exception;
	public int deleteBoard(Map map);
	public List storeSearch(Map map);
}
