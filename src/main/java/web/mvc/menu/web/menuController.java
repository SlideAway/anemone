package web.mvc.menu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class menuController {
	@RequestMapping("/TOPMENU.do")
	public String topMenu(Model model) {
		return "TOPMENU";
	}

	@RequestMapping("/TREEMENU.do")
	public String treeMenu(Model model) {
		return "TREEMENU";
	}
}
