package com.kofu.infra.modules.aircodegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;





@Repository
public class AirCodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.aircodegroup.AirCodeGroupMapper";
	
//	코드 리스트 홈화면
	public List<AirCodeGroup> selectList(AirCodeGroupVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
// 하나만 출력	
	public AirCodeGroup selectOne(AirCodeGroupVo vo){
		AirCodeGroup result = sqlSession.selectOne(namespace + ".selectOne",vo);
		System.out.println("dao result :"+ result);
		return result;
	}

//페이지네이션 목록
	public int selectOneCounting(AirCodeGroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCounting", vo);}

//인서트
	public int insert(AirCodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result : "+result);
		return result;
	}
	public int update(AirCodeGroup dto) {return sqlSession.update(namespace + ".update",dto);}
	public int uelete(AirCodeGroup dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(AirCodeGroupVo vo) {return sqlSession.delete(namespace + ".delete",vo);}
	
	

}
	
