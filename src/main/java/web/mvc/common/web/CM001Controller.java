package web.mvc.common.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import web.mvc.movie.service.MV001Service;

import web.mvc.common.service.CM001Service;
import web.module.date.dateController;

import java.util.HashMap;


@Controller
public class CM001Controller {

    @Autowired
    private CM001Service service;

    @Autowired
    private dateController dateFormat;

    @Autowired
    private MV001Service MV001service;

    @RequestMapping("/CM001.do")
    public String main(Model model) throws Exception{
        HashMap<Object, String> boxOffice = MV001service.getBox();
        model.addAttribute("boxOffice", boxOffice);
        return "CM001";
    }
}
