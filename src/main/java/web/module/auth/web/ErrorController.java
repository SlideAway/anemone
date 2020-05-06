package web.module.auth.web;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {

	@RequestMapping("/ACCESS_DENY.do")
	public String notfound(Authentication auth, Model model) {
		model.addAttribute("errorCode", "404 NotFound");
		model.addAttribute("msg", "찾을 수 없습니다. ");
		return "ER001";
	}

	@RequestMapping("/FORBIDDEN.do")
	public String forbidden(Authentication auth, Model model) {
		model.addAttribute("errorCode", "404 NotFound");
		model.addAttribute("msg", "찾을 수 없습니다. ");
		return "ER002";
	}
}
