package com.javac.bele.web.common.service.mypage;

import java.util.List;
import java.util.Map;

public interface MypageService {

	public List MypageView(Map map);
	public int MypageModifyAut(Map map) throws Exception;
	public int MypageModify(Map map) throws Exception;
	public int MypageDelete(Map map) throws Exception;
}
