package web.module.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class errorController {
    @RequestMapping("/404ERROR.do")
    public String notfound() {
        return "404Error";
    }

    @RequestMapping("/500ERROR.do")
    public String InternalError() {
        return "500Error";
    }

}
