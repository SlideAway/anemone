package web.mvc.common.web;

import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import web.mvc.common.domain.CM003Param;
import web.mvc.common.service.CM003Service;

@Controller
@Log4j
public class CM003Controller {
	@Autowired
	private CM003Service service;


	@RequestMapping("/CM003.do")
	public String main(Model model, String error) {
		if(error != null) {
			model.addAttribute("error", true);
		}
		return "CM003";
	}

	@RequestMapping("/CM003_FINDID.do")
	public String findId() {
		return "CM003ID";
	}

	@RequestMapping("/CM003_doFINDID.do")
	public @ResponseBody String doFindId(CM003Param param) {
		return service.findId(param);
	}
	@RequestMapping("/CM003_FINDPASS.do")
	public String findPass() {
		return "CM003PASS";
	}

	@RequestMapping("/CM003_doFINDPASS.do")
	public @ResponseBody String doFindPass(CM003Param param) {

		long userSeq = service.findPass(param);
		if(userSeq == 0) return "";

		String password = service.generateOTP();
		service.updatePassword(userSeq, password);
		return password;
	}
	/*
DUUPCX
	 */
}
