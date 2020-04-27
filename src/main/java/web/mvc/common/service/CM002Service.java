package web.mvc.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.common.dao.CM002Dao;
import web.mvc.common.domain.CM002Dto;
import web.mvc.common.domain.CM002Param;

import java.util.List;

public class CM002Service {
	@Autowired private CM002Dao dao;

	public boolean chkId(CM002Param param) {
		int result = dao.check(param);
		return valid(result);
	}

	public boolean chkNick(CM002Param param) {
		int result = dao.check(param);
		return valid(result);
	}
	private boolean valid(int result) {
		if(result > 0) {
			return false;
		} else {
			return true;
		}
	}

}
