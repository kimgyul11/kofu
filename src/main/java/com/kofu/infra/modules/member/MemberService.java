package com.kofu.infra.modules.member;

import java.util.List;


public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	public Member selectOne(MemberVo vo)throws Exception;
	public int insert(Member dto) throws Exception;
	public int signup(Member dto) throws Exception;
	public int selectOneIdCheck(Member dto) throws Exception;
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	
	public int airSignUp(Member dto) throws Exception;
	public Member profileImg(MemberVo vo) throws Exception;
	
	//마이페이지 영역
	public Member myPageSelect(MemberVo vo) throws Exception;
	public List<Member> mypageQueSelect(MemberVo vo) throws Exception;
	public List<Member> mypageAnsSelect(MemberVo vo) throws Exception;
	public List<Member> mypagePickSelect(MemberVo vo) throws Exception;
	
	//카카오 로그인
	public Member snsLoginCheck(Member dto) throws Exception;
	public int kakaoInst(Member dto) throws Exception;
	

}
