package web.mvc.common.web;

import lombok.extern.log4j.Log4j;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;
import web.module.auth.domain.CustomUser;
import web.mvc.common.domain.CM003Dto;
import web.mvc.common.service.CM003Service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

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
	public @ResponseBody JSONObject doFindId(CM003Dto dto) {
		JSONObject result = new JSONObject();
		String foundID = service.findId(dto);
		if(foundID.isEmpty()) {
			result.put("success", false);
			result.put("msg", "ID를 찾을 수 없습니다. ");
			return result;
			//비어있음
		} else {
			result.put("success", true);
			result.put("result", foundID);
			return result;
		}
	}
	@RequestMapping("/CM003_FINDPASS.do")
	public String findPass() {
		return "CM003PASS";
	}

//	@RequestMapping("/CM003_LOGOUT.do")
//	public String logout() {
//		return "CM003LOGOUT";
//	}
}
