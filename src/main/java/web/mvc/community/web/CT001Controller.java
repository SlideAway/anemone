package web.mvc.community.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import web.mvc.community.domain.CT001Dto;
import web.mvc.community.domain.CT001Param;
import web.mvc.community.service.CT001Service;
import web.module.date.dateController;

import java.security.Principal;
import java.util.List;


@Controller
public class CT001Controller {
	@Autowired
	private CT001Service service;

	@RequestMapping("/CT001.do")
	public String main(Model model, CT001Param param, @RequestParam(defaultValue = "1") int curPage) {
		List<CT001Dto> noticeList = service.getNoticeList(param);
		int listCnt = service.getCount(param);
		dateController dateFormat = new dateController();
		for(int i = 0; i<noticeList.size(); i++) {
			noticeList.get(i).setRegDate(dateFormat.dateFmt(noticeList.get(i).getRegDate()));
		}
		//int count = service.getCount(param);
		model.addAttribute("noticeList", noticeList);
		//model.addAttribute("count", count);
		return "CT001";
	}

	@RequestMapping("/CT001_DETAIL.do")
	public String detail(Model model, long contentSeq) {
		CT001Dto result = service.getDetail(contentSeq);
		model.addAttribute("detail", result);
		return "CT001DETAIL";
	}

	@RequestMapping("/CT001_INS.do")
	public String insert(Model model, Principal auth) {
		return "CT001_INS";
	}

	@RequestMapping("/CT001_SAVE.do")
	public String save(CT001Param param) {
		service.save(param);
		return "CT001";
	}
}
