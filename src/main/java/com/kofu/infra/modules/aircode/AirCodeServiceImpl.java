package com.kofu.infra.modules.aircode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class AirCodeServiceImpl implements AirCodeService {

	@Autowired
	AirCodeDao dao;
	
	@Override
	public List<AirCode> selectList(AirCodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
}
