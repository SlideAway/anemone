package web.mvc.common.web;

import org.springframework.beans.factory.annotation.Autowired;
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
    public @ResponseBody boolean checkId(CM002Dto dto) {
        CM002Param param = new CM002Param();
        param.setUserId(dto.getUserId());
        return service.chkId(param);
    }

    @RequestMapping("/CM002_NICK.do")
    public @ResponseBody boolean checkNick(CM002Dto dto) {
        CM002Param param = new CM002Param();
        param.setNickName(dto.getNickName());
        return service.chkNick(param);
    }
    @RequestMapping("/CM002_SAVE.do")
    public String saveUser(CM002Dto dto) {
        dto.setUserRole("100");
        service.save(dto);
        return "redirect:CM001.do";
    }
}
