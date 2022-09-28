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
	
	
}
