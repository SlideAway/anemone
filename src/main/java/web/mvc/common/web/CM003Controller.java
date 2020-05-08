package web.mvc.common.web;

import lombok.extern.log4j.Log4j;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import web.mvc.common.domain.CM003Dto;

import javax.servlet.http.HttpSession;

@Controller
@Log4j
public class CM003Controller {

	@RequestMapping("/CM003.do")
	public String main() {
		return "CM003";
	}
	@RequestMapping("/CM003_LOGIN.do")
	public @ResponseBody JSONObject login(String error, HttpSession session) {
		JSONObject res = new JSONObject();
		if(Integer.parseInt(error) == 0) {
			res.put("success", true);
			return res;
		} else if(Integer.parseInt(error) == 1) {
			res.put("success", false);
			res.put("msg", "ID 또는 패스워드가 일치하지 않습니다. ");
			return res;
		}
		return res;
	}

	public @ResponseBody boolean wrongPass() {
		return false;
	}
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
