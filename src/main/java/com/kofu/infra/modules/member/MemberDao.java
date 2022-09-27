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
	
	public int signup(Member dto) {
		int result = sqlSession.insert(namespace + ".signup",dto);
		System.out.println("dao result :"+result);
		return result;
	}
	
	public int selectOneIdCheck(Member dto) {
		int result =sqlSession.selectOne(namespace + ".selectOneIdCheck",dto);
		return result;
	}
	
	//9월 27일 로그인 구현
	public Member selectOneId(Member dto) {return sqlSession.selectOne(namespace + ".selectOneId",dto);}
	public Member selectOneLogin(Member dto) {return sqlSession.selectOne(namespace +".selectOneLogin", dto);}
}
