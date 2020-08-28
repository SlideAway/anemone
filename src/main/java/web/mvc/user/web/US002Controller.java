package web.mvc.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.user.domain.US002Dto;
import web.mvc.user.service.US002Service;
import web.module.auth.getInfo;

@Controller
public class US002Controller {
	@Autowired
	private US002Service service;

	@RequestMapping("/US002.do")
	public String main(Model model, String error) {
		if(error == null) {
			return "US002";
		} else {
			model.addAttribute("msg", "비밀번호가 틀렸습니다. ");
			return "US002";
		}

	}


	@RequestMapping("/US002_COMPARE.do")
	public String compPassword(Model model, String userPwd, Authentication auth) {
		getInfo getInfo = new getInfo();
		long userSeq = getInfo.getSeq(auth);
		if(service.compPass(userPwd, userSeq)) {
			return "US002_CHANGE";
		} else {
			return "redirect:US002.do?error=1";
		}
	}


	@RequestMapping("/US002_CHANGE.do")
	public String change(Model model, Authentication auth) {
		getInfo getInfo = new getInfo();
		long userSeq = getInfo.getSeq(auth);
		US002Dto result = service.getInfo(userSeq);
		model.addAttribute("json", result);
		return "US002chg";
	}
}

