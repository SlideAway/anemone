package web.mvc.manage.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.manage.domain.MGR002Param;

@Controller
public class MGR002Controller {

	@RequestMapping("/MGR002.do")
	public String init(Model model, MGR002Param param) {
		return "MGR002";
	}
}
