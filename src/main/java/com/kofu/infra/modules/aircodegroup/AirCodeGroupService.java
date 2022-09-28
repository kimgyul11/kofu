package com.kofu.infra.modules.aircodegroup;

import java.util.List;

public interface AirCodeGroupService {
	
	public List<AirCodeGroup> selectList(AirCodeGroupVo vo) throws Exception;
	
	
}
