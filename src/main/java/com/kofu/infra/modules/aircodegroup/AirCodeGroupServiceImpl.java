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
	public int selectOneCount(AirCodeGroupVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
}
