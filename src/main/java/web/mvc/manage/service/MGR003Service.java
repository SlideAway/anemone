package web.mvc.manage.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.manage.dao.MGR003Dao;
import web.mvc.manage.domain.MGR003Dto;
import web.mvc.manage.domain.MGR003Param;

import java.util.List;

public class MGR003Service {
	@Autowired
	private MGR003Dao dao;

	public List<MGR003Dto> getUserList(MGR003Param param) {
		return dao.getUserList(param);
	}


}
