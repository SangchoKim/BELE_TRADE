package com.javac.bele.web.common.sql.mypage;

import java.util.List;
import java.util.Map;

public interface MypageMapper {

	public List MypageView(Map map);
	public int MypageModifyAut(Map map);
	public int MypageModify(Map map);
	public int MypageDelete(Map map);
}
