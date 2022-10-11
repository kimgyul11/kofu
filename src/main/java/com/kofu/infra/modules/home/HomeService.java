package com.kofu.infra.modules.home;

import java.util.List;

public interface HomeService {
	
	public List<Home> selectList(HomeVo vo) throws Exception;
	public int insert(Home dto) throws Exception;
	public List<Home> homeSearch(HomeVo vo) throws Exception;
	public Home selectOne(HomeVo vo) throws Exception;
	
}
