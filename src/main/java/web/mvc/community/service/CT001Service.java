package web.mvc.community.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.transaction.annotation.Transactional;
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
	public int getCount(CT001Param param) {
		return dao.getCount(param);
	}
	@Transactional
	public void save(CT001Param param) {
		dao.saveNotice(param);
	}
	public CT001Dto getDetail(long contentSeq) {
		return dao.getDetail(contentSeq);
	}
}
