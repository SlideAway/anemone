package web.mvc.movie.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.movie.service.MV001Service;

import java.util.HashMap;

@Controller
public class MV001Controller {

	@Autowired
	MV001Service service;

	@RequestMapping("/MV001.do")
	public String main(Model model) throws  Exception{
		HashMap<Object, String> boxOffice = service.getBox();
		model.addAttribute("boxOffice", boxOffice);
		return "MV001";
	}
}

