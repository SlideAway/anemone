package web.mvc.community.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.mvc.community.domain.CT001Dto;
import web.mvc.community.domain.CT001Param;
import web.mvc.community.service.CT001Service;

import java.util.List;


@Controller
public class CT001Controller {
	@Autowired
	private CT001Service service;

	@RequestMapping("/CT001.do")
	public String main(Model model, CT001Param param) {
		List<CT001Dto> noticeList = service.getNoticeList(param);
		model.addAttribute("noticeList", noticeList);
		return "CT001";
	}
}
