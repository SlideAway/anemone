package web.mvc.menu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.menu.domain.MN001Dto;
import web.mvc.menu.domain.MN001Param;
import web.mvc.menu.service.MN001Service;

import java.util.List;

@Controller
public class MN001Controller {
	@Autowired
	private MN001Service service;

	@RequestMapping("/TOPMENU.do")
	public String topMenu(Model model, MN001Dto dto) {
		if(dto != null) {
			model.addAttribute("userInfo", dto.getUserInfo());
		}
		return "TOPMENU";
	}

	@RequestMapping("/TREEMENU.do")
	public String treeMenu(Model model, MN001Param param) {
		int userRole = 100;
		if(param.getUserInfo() != null) {
			userRole = param.getUserInfo().getAuth();
		}

		model.addAttribute("horizen", service.getHorizen(userRole));
		model.addAttribute("topMenu", service.getTopMenu(userRole));
		model.addAttribute("leafMenu", service.getLeafMenu(userRole));

		return "TREEMENU";
	}
}
