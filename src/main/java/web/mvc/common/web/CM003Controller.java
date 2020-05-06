package web.mvc.common.web;

import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import web.mvc.common.domain.CM003Dto;
import web.mvc.common.service.CM003Service;

@Controller
public class CM003Controller {
	@Autowired
	CM003Service service;

	@RequestMapping("/CM003.do")
	public String main() {
		return "CM003";
	}
//	@RequestMapping("/CM003_LOGIN.do")
//	public @ResponseBody JSONObject login(CM003Dto dto) {
//		JSONObject result = new JSONObject();
//
//		return result;
//	}
	@RequestMapping("/CM003_FINDID.do")
	public String findId() {
		return "CM003ID";
	}
	@RequestMapping("/CM003_FINDPASS.do")
	public String findPass() {
		return "CM003Pass";
	}

	@RequestMapping("/CM003_LOGOUT.do")
	public String logout() {
		return "CM003Logout";
	}
}
