package web.mvc.community.service;

import org.springframework.beans.factory.annotation.Autowired;

import web.mvc.community.dao.CT001Dao;
import web.mvc.community.domain.CT001Dto;
import web.mvc.community.domain.CT001Param;

import java.util.List;

public class CT001Service {
	@Autowired
	private CT001Dao dao;

	public List<CT001Dto> getNoticeList(CT001Param param) {
		List<CT001Dto> result = dao.getNotice(param);
		return result;
	}
}