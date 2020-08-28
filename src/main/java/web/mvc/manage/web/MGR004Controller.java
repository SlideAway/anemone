package web.mvc.manage.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.manage.domain.MGR004Dto;
import web.mvc.manage.domain.MGR004Param;
import web.mvc.manage.service.MGR004Service;

import java.util.List;

@Controller
public class MGR004Controller {

	@Autowired
	private MGR004Service service;

	@RequestMapping("/MGR004.do")
	public String init(Model model, MGR004Param param) {
		List<MGR004Dto> dto = service.getMenuInfo(param);
		model.addAttribute("menuInfo", dto);
		return "MGR004";
	}
}
