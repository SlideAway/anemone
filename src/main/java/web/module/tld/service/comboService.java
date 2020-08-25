package web.module.tld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import web.module.tld.dao.comboDao;
import web.module.tld.domain.comboDto;
public class comboService {
	@Autowired
	private comboDao dao;

	public List<comboDto> getComboList(String code) {
		return dao.getComboList(code);
	}
	public List<comboDto> getRoleList(String code) {
		return dao.getRoleList(code);
	}

}
