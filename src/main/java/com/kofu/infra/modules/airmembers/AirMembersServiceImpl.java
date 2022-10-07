package com.kofu.infra.modules.airmembers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AirMembersServiceImpl implements AirMembersService {

	@Autowired
	AirMembersDao dao;

	//리스트	
	@Override
	public List<AirMembers> selectList(AirMembersVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	//하나만 출력	
	@Override
	public AirMembers selectOne(AirMembersVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	
	//페이지 카운트
	@Override
	public int selectOneCounting(AirMembersVo vo) throws Exception{
		return dao.selectOneCounting(vo);
	}
}
