package web.mvc.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import web.mvc.common.dao.CM002Dao;
import web.mvc.common.domain.CM002Dto;
import web.mvc.common.domain.CM002Param;

public class CM002Service {
    @Autowired
    CM002Dao dao;

    public boolean chkId(CM002Param param) {
        int result = dao.get(param);
        if(result > 0 )  {
            System.out.println("중복");
            return false;
        } else {
            System.out.println("사용가능");
            return true;
        }

    }

    public boolean chkNick(CM002Param param) {
        if(dao.get(param) > 0) {
            return false;
        } else {
            return true;
        }
    }
    @Transactional
    public int save(CM002Param param) {
        return dao.save(param);
    }
}
