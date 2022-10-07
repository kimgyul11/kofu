package com.kofu.infra.modules.airboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AirBoardServiceImpl implements AirBoardService {

	@Autowired
	AirBoardDao dao;
	
	@Override
	public List<AirBoard> selectList(AirBoardVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
}
