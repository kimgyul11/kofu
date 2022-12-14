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
	
	
	
	//--------------------------------------질문영역--------------------------------------------------
	//질문작성
	public int insert(Home dto) {
		int result = sqlSession.insert(namespace + ".insert" ,dto);
		System.out.println("dao result :"+result);
		return result;
	}
	//질문이미지 업로드
	public int insertImgUploaded(Home dto) {return sqlSession.insert("Base" + ".insertUploaded",dto);}
	
	//답변 상세보기
	public Home selectOne(HomeVo vo) {
		Home result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result :"+ result);
		return result;
	}
	//북마크
	public int bookmarkInst(Home dto) {
		int result=sqlSession.insert(namespace + ".bookmarkInst", dto);
		return result;
	}
	//북마크 체크 
	public int bookmarkcheck(Home dto) { return sqlSession.selectOne(namespace +".bookmarkcheck", dto);}
	
	//북마크 제거
	public int bookmarkDel(Home  dto) { return sqlSession.delete(namespace + ".bookmarkDel",dto);}
	
	//북마크 리스트
	public Home bookmarklist(Home dto){return sqlSession.selectOne(namespace +".bookmarklist",dto);	}
	
	
	//질문삭제
	public int questionDelete(Home dto) {
		return sqlSession.delete(namespace + ".questionDelete",dto);
	}
	
	
	//------------------------------------------답변-----------------------------------------------
	//답변리스트
	public List<Home> selectAns(HomeVo vo){
		return sqlSession.selectList(namespace + ".selectAns",vo);
	}
	//답변작성
	public int ansInsert(Home dto) {
		int result = sqlSession.insert(namespace + ".ansInsert" , dto);
		return result;
	}
	//답변채택
	public int answerSelect(Home dto) {return sqlSession.update(namespace + ".answerSelect",dto);}
	
	
	
	//페이지네이션 카운트
	public int selectOenCount(HomeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOenCount",vo);
	}
	
	//홈 검색화면
	public List<Home> homeSearch(HomeVo vo){return sqlSession.selectList(namespace + ".homeSearch",vo);}
	
	//질문삭제
	public int answerDelete(Home dto) {
		return sqlSession.delete(namespace + ".answerDelete",dto);
	}
	

	
	//-------------------좋아요 관련---------------------
	// 좋아요등록 
	public int likeInsert(Home dto) {
		return sqlSession.insert(namespace + ".likeInsert",dto);
	}
	//좋아요 삭제
	public int likedelete(Home dto) {return sqlSession.delete(namespace + ".likedelete" , dto);}

	//좋아요 ajax-count
	public int likeCheck(Home dto) { return sqlSession.selectOne(namespace+".likeCheck", dto); }
	
	//좋아요리스트카운트 	
	public List<Home> likeListCnt(Home dto){return sqlSession.selectList(namespace + ".likeListCnt",dto);}
	
	

}
