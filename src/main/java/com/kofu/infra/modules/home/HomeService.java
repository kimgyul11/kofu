package com.kofu.infra.modules.home;

import java.util.List;

public interface HomeService {
	
	public List<Home> selectList() throws Exception;
}
