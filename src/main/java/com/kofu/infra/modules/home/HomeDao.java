package com.kofu.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class HomeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.home.HomeMapper";
	
	public List<Home> selectList(HomeVo vo){return sqlSession.selectList(namespace + ".selectList",vo);}
	
	public int insert(Home dto) {
		int result = sqlSession.insert(namespace + ".insert" ,dto);
		System.out.println("dao result :"+result);
		return result;
	}
	public List<Home> homeSearch(HomeVo vo){return sqlSession.selectList(namespace + ".homeSearch",vo);}
	
	
	public Home selectOne(HomeVo vo) {
		Home result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result :"+ result);
		return result;
	}
	public int selectOenCount(HomeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOenCount",vo);
	}
	public int ansInsert(Home dto) {
		int result = sqlSession.insert(namespace + ".ansInsert" , dto);
		return result;
	}
	public List<Home> selectAns(HomeVo vo){
		return sqlSession.selectList(namespace + ".selectAns",vo);
	}
	public int bookmarkInst(Home dto) {
		int result=sqlSession.insert(namespace + ".bookmarkInst", dto);
		return result;
	}
	// 좋아요등록 
	public int likeInsert(Home dto) {
		return sqlSession.insert(namespace + ".likeInsert",dto);
	}
	//좋아요 삭제
	public int likedelete(Home dto) {return sqlSession.delete(namespace + ".likedelete" , dto);}

	//좋아요 ajax-count
	public int likeCheck(Home dto) { return sqlSession.selectOne(namespace+".likeCheck", dto); }
	
	//답변채택
	public int answerSelect(Home dto) {return sqlSession.update(namespace + ".answerSelect",dto);}
}
