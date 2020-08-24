package web.mvc.manage.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.manage.domain.MGR004Param;

@Controller
public class MGR004Controller {

	@RequestMapping("/MGR004.do")
	public String init(Model model, MGR004Param param) {
		return "MGR004";
	}
}
