package com.kofu.infra.modules.airmembers;

import java.util.List;


public interface AirMembersService {
	
	public List<AirMembers> selectList(AirMembersVo vo) throws Exception;
	public AirMembers selectOne(AirMembersVo vo) throws Exception;
	public int selectOneCounting(AirMembersVo vo) throws Exception;
 	
}
