package web.mvc.community.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.community.dao.CT002Dao;
import web.mvc.community.domain.CT002Dto;
import web.mvc.community.domain.CT002Param;

import java.util.List;

public class CT002Service {
	@Autowired
	CT002Dao dao;

	public List<CT002Dto> getFree(CT002Param param) {
		return dao.getList(param);
	}

	public CT002Dto getDetail(long contentSeq) {
		return dao.getDetail(contentSeq);
	}
}
