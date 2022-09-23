package com.kofu.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList() throws Exception;
	public Member selectOne(MemberVo vo)throws Exception;
	public int insert(Member dto) throws Exception;
	public int signup(Member dto) throws Exception;
	public int selectOneIdCheck(Member dto) throws Exception;
}
