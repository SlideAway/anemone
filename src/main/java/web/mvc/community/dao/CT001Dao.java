package web.mvc.community.dao;

import web.mvc.community.domain.CT001Dto;
import web.mvc.community.domain.CT001Param;

import java.util.List;

public interface CT001Dao {
	public List<CT001Dto> getNotice(CT001Param param);
}
