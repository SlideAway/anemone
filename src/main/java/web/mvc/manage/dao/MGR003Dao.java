package web.mvc.manage.dao;

import web.mvc.manage.domain.MGR003Dto;
import web.mvc.manage.domain.MGR003Param;

import java.util.List;

public interface MGR003Dao {
	public List<MGR003Dto> getUserList(MGR003Param param);
}
