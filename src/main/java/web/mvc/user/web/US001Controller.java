package web.mvc.user.web;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.module.auth.domain.CustomUser;
import web.module.date.dateController;
import web.module.auth.getInfo;
import web.module.auth.domain.MemberVO;
import web.mvc.user.service.US001Service;



@Controller
public class US001Controller extends getInfo{

	@Autowired
	private US001Service serivce;

	@RequestMapping("/US001.do")
	public String main(Model model, Authentication auth) {
		try {
			dateController date = new dateController();
			JSONObject json = new JSONObject();
			MemberVO vo = new MemberVO();
			getInfo getInfo = new getInfo();
			CustomUser userInfo = (CustomUser)auth.getPrincipal();
			vo = userInfo.getMember();
			json = getInfo.get(vo);

			model.addAttribute("data", json);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "US001";
	}

}
