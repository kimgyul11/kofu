package com.kofu.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kofu.infra.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList();
	}
	@Override
	public Member selectOne(MemberVo vo)throws Exception{
		Member result = dao.selectOne(vo);
		System.out.println("service result :"+result);
		return result;
	}
	@Override
	public int insert(Member dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: "+ result);
		return result;
	}
	
	@Override
	public int signup(Member dto) throws Exception{
		dto.setUser_pw(UtilSecurity.encryptSha256(dto.getUser_pw()));
		int result = dao.insert(dto);
		System.out.println("service result: "+result);
		return result;
	}
	
	@Override
	public int selectOneIdCheck(Member dto) throws Exception{
		int result = dao.selectOneIdCheck(dto);
		return result;
	}

	
	// 9월 27일 
	@Override
	public  Member selectOneId(Member dto) throws Exception{
		Member result = dao.selectOneId(dto);
		return result;
	}
	@Override
	public  Member selectOneLogin(Member dto) throws Exception{
		Member result = dao.selectOneLogin(dto);
		return result;
	}
}
