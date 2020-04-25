package web.mvc.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.common.dao.CM002Dao;
import web.mvc.common.domain.CM002Dto;
import web.mvc.common.domain.CM002Param;

public class CM002Service {
    @Autowired
    CM002Dao dao;

    public boolean chkId(CM002Param param) {
        if(dao.get(param) > 0 )  {
            return false;
        } else {
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
    public void save(CM002Dto dto) {
        dao.save(dto);
    }
}
