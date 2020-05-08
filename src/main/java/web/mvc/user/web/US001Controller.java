package web.mvc.user.web;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.module.auth.domain.CustomUser;
import web.module.date.web.dateController;

import web.mvc.user.domain.US001Dto;
import web.module.auth.domain.MemberVO;
import web.mvc.user.service.US001Service;

import java.lang.reflect.Field;
import java.text.SimpleDateFormat;


@Controller
public class US001Controller {

	@Autowired
	private US001Service serivce;

	@RequestMapping("/US001.do")
	public String main(Model model, Authentication auth) {
		try {
			dateController date = new dateController();
			JSONObject json = new JSONObject();

			CustomUser userInfo = (CustomUser)auth.getPrincipal();
			MemberVO vo = userInfo.getMember();
			model.addAttribute("data", vo);
			vo.setRegDate(date.dateFmt(vo.getRegDate()));

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "US001";
	}

}
