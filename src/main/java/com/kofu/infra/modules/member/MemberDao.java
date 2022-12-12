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
	
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList", ""); }
	
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
	
//	uploaded
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
	//10월 18일 회원가입
	public int airSignUp(Member dto) {
		int result = sqlSession.insert(namespace + ".airSignUp", dto);
		return result;
	}
	// 이미지 업로드
	public Member profileImg(MemberVo vo){return sqlSession.selectOne(namespace + ".profileImg" , vo);}
	
	//마이페이지
	public Member myPageSelect(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".myPageSelect", vo);
		return result;
	}
	//마이페이지 질문리스트
	public List<Member> mypageQueSelect(MemberVo vo){
		return sqlSession.selectList(namespace + ".mypageQueSelect",vo);
	}
	//마이페이지 답변리스트
	public List<Member> mypageAnsSelect(MemberVo vo){
		return sqlSession.selectList(namespace + ".mypageAnsSelect", vo);
	}
	//마이페이지 채택리스트
	public List<Member> mypagePickSelect(MemberVo vo){
		return sqlSession.selectList(namespace + ".mypagePickSelect", vo);
	}
	//마이페이지 북마크리스트 
	public List<Member> mypageBookmarkSelect(MemberVo vo){
		return sqlSession.selectList(namespace + ".mypageBookmarkSelect", vo);
	}	
	//마이페이지 수정
	public int mypageMod(Member dto) {return sqlSession.update(namespace + ".mypageMod",dto);}
	

	//카카오 로그인 관련
	//아이디 체크
	public Member snsLoginCheck(Member dto) {
		Member result =sqlSession.selectOne(namespace + ".snsLoginCheck",dto);
		return result;
	}
	//카카오 회원가입
	public int kakaoInst(Member dto) {
		int result = sqlSession.insert(namespace + ".kakaoInst", dto);
		return result;
	}

}
