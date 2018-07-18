package com.javac.bele.web.common.dao.store;

import java.util.List;
import java.util.Map;

public interface StoreDao {

	public List showBoard(Map map);
	public int writeGetCount(Map map) ;
	public int reviewNum(Map map) throws Exception;
	public int writeBoard(Map map);
	public List showform(Map map);
	public int updateBoard(Map map);
	public int deleteBoard(Map map);
	public List storeSearch(Map map);
}
