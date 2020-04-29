package web.mvc.community.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import web.mvc.community.domain.CT002Dto;
import web.mvc.community.domain.CT002Param;
import web.mvc.community.service.CT002Service;

import java.util.List;

@Controller
public class CT002Controller {
	@Autowired
	CT002Service service;

	@RequestMapping("/CT002.do")
	public String main(Model model, CT002Param param) {
		List<CT002Dto> result = service.getFree(param);
		model.addAttribute("freeList", result);
		return "CT002";
	}

	@RequestMapping("/CT002_DETAIL.do")
	public String detail(Model model, long contentSeq) {
		CT002Dto result = service.getDetail(contentSeq);
		model.addAttribute("detail", result);
		return "CT002DETAIL";
	}
}
