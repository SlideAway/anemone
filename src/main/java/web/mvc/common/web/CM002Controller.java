package web.mvc.common.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import web.module.auth.passwordEncoder;
import web.mvc.common.domain.CM002Param;
import web.mvc.common.service.CM002Service;


@Controller
public class CM002Controller {


    @Autowired
    private CM002Service service;

    @Autowired
    private passwordEncoder encoder;

    @RequestMapping("/CM002.do")
    public String main() {
        return "CM002";
    }

    @RequestMapping("/CM002_ID.do")
    public @ResponseBody boolean checkId(CM002Param param) {
        return service.chkId(param);
    }

    @RequestMapping("/CM002_SAVE.do")
    public String saveUser(CM002Param param) {
        param.setUserPwd(encoder.encode(param.getUserPwd()));
        param.setUserRole("R99");
        service.save(param);
        return "redirect:CM001.do";
    }
}
