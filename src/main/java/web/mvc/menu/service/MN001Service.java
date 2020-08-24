package web.mvc.menu.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.menu.dao.MN001Dao;
import web.mvc.menu.domain.MN001Dto;

import java.util.List;

public class MN001Service {

	@Autowired
	private MN001Dao dao;

	public List<MN001Dto> getHorizen(int userRole) {
		return dao.getHorizen(userRole);
	}


	public List<MN001Dto> getTopMenu(int userRole) {
		return dao.getTopMenu(userRole);
	}

	public List<MN001Dto> getLeafMenu(int userRole) {
		return dao.getLeafMenu(userRole);
	}

}
