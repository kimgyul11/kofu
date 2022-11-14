package com.kofu.infra.modules.home;

import java.util.List;





public interface HomeService {
	
	public List<Home> selectList(HomeVo vo) throws Exception;
	public int insert(Home dto) throws Exception;
	public List<Home> homeSearch(HomeVo vo) throws Exception;
	public Home selectOne(HomeVo vo) throws Exception;
	public int selectOenCount(HomeVo vo) throws Exception;
	public int ansInsert(Home dto) throws Exception;
	public List<Home>selectAns(HomeVo vo) throws Exception;
	public int bookmarkInst(Home dto) throws Exception;
	
	
	//-------좋아요버튼 영역------------------------------
	public int likeInsert(Home dto)throws Exception;
	public int likedelete(Home dto)throws Exception;
	public int likeCheck(Home dto) throws Exception;
	
	//--------- 답변채택--------------------------------
	public int answerSelect(Home dto)throws Exception;
	
	//삭제영역
	public int questionDelete(Home dto)throws Exception;
	public int answerDelete(Home dto)throws Exception;
}
