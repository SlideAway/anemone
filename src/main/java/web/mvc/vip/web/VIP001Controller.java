package web.mvc.vip.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VIP001Controller {


    @RequestMapping("/VIP001.do")
    public String main() {
        return "VIP001";
    }
}
