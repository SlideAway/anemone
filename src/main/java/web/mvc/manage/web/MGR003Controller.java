package web.mvc.manage.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.manage.domain.MGR003Param;

@Controller
public class MGR003Controller {

	@RequestMapping("/MGR003.do")
	public String init(Model model, MGR003Param param) {
		return "MGR003";
	}
}
