package com.kofu.infra.modules.aircodegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AirCodeGroupServiceImpl implements AirCodeGroupService {

	@Autowired
	AirCodeGroupDao dao;
	
	@Override
	public List<AirCodeGroup> selectList(AirCodeGroupVo vo) throws Exception{
		return dao.selectList(vo);
	}
	@Override
	public AirCodeGroup selectOne(AirCodeGroupVo vo)throws Exception{
		return dao.selectOne(vo);
	}
	@Override
	public int selectOneCounting(AirCodeGroupVo vo) throws Exception{
		return dao.selectOneCounting(vo);
	}
	
// 코드그룹 작성	
	@Override
	public int insert(AirCodeGroup dto) throws Exception{
		return dao.insert(dto);
	}
	
//	수정,삭제,가짜삭제
	@Override
	public int update(AirCodeGroup dto) throws Exception{
		return dao.update(dto);
	}
	@Override
	public int uelete(AirCodeGroup dto) throws Exception{
		return dao.uelete(dto);
	}
	@Override
	public int delete(AirCodeGroupVo vo) throws Exception{
		return dao.delete(vo);
	}
	
}
