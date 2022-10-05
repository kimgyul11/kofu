package com.kofu.infra.modules.airmembers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AirMembersServiceImpl implements AirMembersService {

	@Autowired
	AirMembersDao dao;
	
	@Override
	public List<AirMembers> selectList() throws Exception {
		return dao.selectList();
	}
}
