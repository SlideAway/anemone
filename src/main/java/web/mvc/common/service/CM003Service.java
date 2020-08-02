package web.mvc.common.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import web.mvc.common.dao.CM003Dao;
import web.mvc.common.domain.CM003Dto;

public class CM003Service {
	@Autowired
	private CM003Dao dao;

	@Transactional
	public String findId(CM003Dto dto) {
		if(dao.findId(dto).getUserId().isEmpty()) {
			return "";
		} else {
			String result = dao.findId(dto).getUserId();
			return result;
		}
	}

}

