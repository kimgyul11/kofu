package com.kofu.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class HomeServiceImpl implements HomeService{

	@Autowired
	HomeDao dao;
	
	@Override
	public List<Home>selectList(HomeVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
	
	  @Override
	  public int insert(Home dto) throws Exception{ 
	  int result = dao.insert(dto); System.out.println("service result : "+ result ); 
	  return result; }
	 
	


	@Override
	public List<Home> homeSearch(HomeVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
	@Override
	public Home selectOne(HomeVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	
	@Override
	public int selectOenCount(HomeVo vo) throws Exception{
		return dao.selectOenCount(vo);
	}
	
	@Override
	public int ansInsert(Home dto) throws Exception{
		return dao.ansInsert(dto);
	}
	
	@Override
	public List<Home>selectAns(HomeVo vo) throws Exception{
		return dao.selectAns(vo);
	}
	
	
	//-------bookmark 영역-------------
	
	@Override
	public int bookmarkInst(Home dto) throws Exception {
		return dao.bookmarkInst(dto);
	}
	
	@Override
	public int bookmarkcheck(Home dto) throws Exception {
		return dao.bookmarkcheck(dto);
	}
	
	@Override
	public int bookmarkDel(Home dto) throws Exception {
		return dao.bookmarkDel(dto);
	}


	@Override
	public List<Home> bookmarklist(HomeVo vo) throws Exception {
		return dao.bookmarklist(vo);
	}


	@Override
	public int likeInsert(Home dto) throws Exception {
		return dao.likeInsert(dto);
	}

	@Override
	public int likedelete(Home dto) throws Exception {
		return dao.likedelete(dto);
	}
	
	
	
	
	@Override
	public List<Home> likeListCnt(Home dto) throws Exception {
		return dao.likeListCnt(dto);
	}


	@Override
	public int questionDelete(Home dto) throws Exception {
		return dao.questionDelete(dto);
	}
	@Override
	public int answerDelete(Home dto) throws Exception {
		return dao.answerDelete(dto);
	}


	@Override
	public int likeCheck(Home dto) throws Exception {
		return dao.likeCheck(dto);
	}

	//답변 채택하기
	@Override
	public int answerSelect(Home dto) throws Exception {
		return dao.answerSelect(dto);
	}
	

}
