package web.mvc.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.user.dao.US002Dao;
import web.mvc.user.domain.US002Dto;

public class US002Service  {

	@Autowired
	private US002Dao dao;

	public boolean compPass(String userPwd, long userSeq) {
		if(dao.getPwd(userSeq).getUserPwd() == userPwd) {
			return true;
		}
		else {
			return false;
		}
	}

	public US002Dto getInfo(long userSeq) {
		US002Dto result = dao.get(userSeq);
		return result;
	}
}
