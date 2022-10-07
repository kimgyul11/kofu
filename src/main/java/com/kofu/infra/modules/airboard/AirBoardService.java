package com.kofu.infra.modules.airboard;

import java.util.List;

public interface AirBoardService {

	public List<AirBoard> selectList(AirBoardVo vo) throws Exception;
}
