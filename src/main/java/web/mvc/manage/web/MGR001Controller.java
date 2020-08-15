package web.mvc.manage.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import web.mvc.manage.domain.MGR001Param;

@Controller
public class MGR001Controller {

    @RequestMapping("/MGR001.do")
    public String init(Model model, MGR001Param param) {
        return "MGR001";
    }
}
