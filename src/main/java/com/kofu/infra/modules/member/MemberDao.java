package com.kofu.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
	
	public Member selectOne(MemberVo vo){
		Member result = sqlSession.selectOne(namespace + ".selectOne",vo);
		System.out.println("dao result :"+ result);
		return result;
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert",dto);
		System.out.println("dao result :"+result);
		return result;
		
	}
	
}
