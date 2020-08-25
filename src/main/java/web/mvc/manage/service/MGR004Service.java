package web.mvc.manage.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.manage.dao.MGR004Dao;
import web.mvc.manage.domain.MGR004Dto;
import web.mvc.manage.domain.MGR004Param;

import java.util.List;

public class MGR004Service {
	@Autowired
	private MGR004Dao dao;

	public List<MGR004Dto> getMenuInfo(MGR004Param param) {
		return dao.getMenuInfo(param);
	}

}
