package com.kofu.infra.modules.aircode;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class AirCodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.aircode.AirCodeMapper";
	
	
	//리스트 출력 
	public List<AirCode>selectList(AirCodeVo vo){
		return sqlSession.selectList(namespace + ".selectList",vo);
		}
	
	//셀렉트영역 
	public List<AirCode> ccgSelectView(){
		return sqlSession.selectList(namespace + ".ccgSelectView");
	}
	
	// 하나만 출력	
		public AirCode selectOne(AirCodeVo vo){
			AirCode result = sqlSession.selectOne(namespace + ".selectOne",vo);
			return result;
		}
		
	//인서트
	public int insert(AirCode dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
		
	//페이지네이션 목록
		public int selectOneCounting(AirCodeVo vo) {
			return sqlSession.selectOne(namespace + ".selectOneCounting", vo);}

	//업데이트,딜리트,가짜삭제	
		public int update(AirCode dto) {return sqlSession.update(namespace + ".update",dto);}
		public int uelete(AirCode dto) {return sqlSession.update(namespace + ".uelete", dto);}
		public int delete(AirCodeVo vo) {return sqlSession.delete(namespace + ".delete",vo);}
	
}
