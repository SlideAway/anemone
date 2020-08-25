package web.mvc.manage.dao;

import web.mvc.manage.domain.MGR004Dto;
import web.mvc.manage.domain.MGR004Param;

import java.util.List;

public interface MGR004Dao {
	public List<MGR004Dto> getMenuInfo(MGR004Param param);
}
