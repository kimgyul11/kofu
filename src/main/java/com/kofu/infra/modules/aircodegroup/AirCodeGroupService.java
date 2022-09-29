package com.kofu.infra.modules.aircodegroup;

import java.util.List;


public interface AirCodeGroupService {
	
	public List<AirCodeGroup> selectList(AirCodeGroupVo vo) throws Exception;
	public AirCodeGroup selectOne(AirCodeGroupVo vo) throws Exception;
	public int selectOneCounting(AirCodeGroupVo vo) throws Exception;
	public int insert(AirCodeGroup dto) throws Exception;
	
}
