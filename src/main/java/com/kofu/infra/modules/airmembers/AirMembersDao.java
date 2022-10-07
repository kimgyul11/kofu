package com.kofu.infra.modules.airmembers;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class AirMembersDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.airmembers.AirMembersMapper";
	//리스트
	public List<AirMembers> selectList(AirMembersVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
	//하나 출력
	public AirMembers selectOne(AirMembersVo vo) {
		AirMembers result = sqlSession.selectOne(namespace + ".selectOne",vo);
		System.out.println("dao result : " + result);
		return result;
	}
	
	//페이지네이션 카운트
	public int selectOneCounting(AirMembersVo vo) {
		return sqlSession.selectOne(namespace +".selectOneCounting", vo);
	}
	
}
