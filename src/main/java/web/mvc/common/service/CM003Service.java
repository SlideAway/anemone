package web.mvc.common.service;

import web.mvc.common.dao.CM003Dao;
import web.mvc.common.domain.CM003Dto;
import web.mvc.common.domain.CM003Param;

public class CM003Service {

	CM003Dao dao;

	public CM003Dto login(CM003Param param) {
		return dao.login(param);
	}
}
