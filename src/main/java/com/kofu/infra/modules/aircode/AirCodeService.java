package com.kofu.infra.modules.aircode;

import java.util.List;


public interface AirCodeService {

	public List<AirCode> selectList(AirCodeVo vo) throws Exception;
}
