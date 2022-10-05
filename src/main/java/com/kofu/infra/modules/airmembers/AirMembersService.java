package com.kofu.infra.modules.airmembers;

import java.util.List;


public interface AirMembersService {
	
	public List<AirMembers> selectList() throws Exception;
}
