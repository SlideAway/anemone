package web.mvc.common.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import web.mvc.common.domain.CM002Dto;
import web.mvc.common.domain.CM002Param;
import web.mvc.common.service.CM002Service;

import java.util.List;

@Controller
public class CM002Controller {

    @Autowired private CM002Service service;

    @RequestMapping("/CM002.do")
    public String main() {
        return "CM002";
    }
    @RequestMapping("/CM002_CHECKID.do")
    public @ResponseBody boolean chkID(CM002Param param) {
        return service.chkId(param);
    }
    @RequestMapping("/CM002_CHECKNICK.do")
    public @ResponseBody boolean chkNick(CM002Param param) {
        return service.chkNick(param);
    }

    public String doSave(CM002Dto dto) {

        return "CM002";
    }
}
