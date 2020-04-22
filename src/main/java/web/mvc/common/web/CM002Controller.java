package web.mvc.common.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CM002Controller {
    @RequestMapping("/CM002.do")
    public String main() {
        return "CM002";
    }
}
