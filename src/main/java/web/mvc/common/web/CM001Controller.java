package web.mvc.common.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CM001Controller {
    @RequestMapping("/CM001.do")
    public String test() {
        return "CM001";
    }
}
