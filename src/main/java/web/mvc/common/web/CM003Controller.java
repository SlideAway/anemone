package web.mvc.common.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import web.module.auth.web.AuthController;
import web.mvc.common.domain.CM003Param;
import web.mvc.common.service.CM003Service;

import javax.servlet.http.HttpSession;

@Controller
public class CM003Controller {
	@Autowired
	CM003Service service;

	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);

	@RequestMapping("/CM003.do")
	public String main() {
		return "CM003";
	}
	@RequestMapping("/CM003_LOGIN.do")
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
							  @RequestParam(value = "logout", required = false) String logout) {
		ModelAndView model = new ModelAndView();

		if (error != null) {
			model.addObject("error", "invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully");
		}

		model.setViewName("CM001");

		return model;
	}
}
