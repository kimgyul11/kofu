package com.kofu.infra.modules.aircode;

import java.util.List;




public interface AirCodeService {

	public List<AirCode> selectList(AirCodeVo vo) throws Exception;
	public AirCode selectOne(AirCodeVo vo) throws Exception;
	public int selectOneCounting(AirCodeVo vo) throws Exception;
	public int insert(AirCode dto) throws Exception;
	public int update(AirCode dto) throws Exception;
	public int uelete(AirCode dto) throws Exception;
	public int delete(AirCodeVo vo) throws Exception;
}
