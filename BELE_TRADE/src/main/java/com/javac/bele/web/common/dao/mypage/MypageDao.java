package com.javac.bele.web.common.dao.mypage;

import java.util.List;
import java.util.Map;

public interface MypageDao {

	public List MypageView(Map map);
	public int MypageModifyAut(Map map);
	public int MypageModify(Map map);
	public int MypageDelete(Map map);
}
