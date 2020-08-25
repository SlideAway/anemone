package web.mvc.manage.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.manage.domain.MGR003Param;
import web.mvc.manage.service.MGR003Service;

@Controller
public class MGR003Controller {
	@Autowired
	private MGR003Service service;

	@RequestMapping("/MGR003.do")
	public String init(Model model, MGR003Param param) {
		model.addAttribute("userList", service.getUserList(param));
		return "MGR003";
	}
}
