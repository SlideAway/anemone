package web.mvc.common.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import web.mvc.common.domain.CM002Dto;
import web.mvc.common.domain.CM002Param;
import web.mvc.common.service.CM002Service;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CM002Controller {


    @Autowired
    CM002Service service;

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

        param.setUserRole("100");
        service.save(param);
        return "redirect:CM001.do";
    }
}
