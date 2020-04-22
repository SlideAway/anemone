package web.mvc.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.mvc.common.dao.CM001Dao;
import web.mvc.common.domain.CM001Dto;

import java.util.List;

public class CM001Service {
    @Autowired
    private CM001Dao dao;


    public List<CM001Dto> getNotice() {
        List<CM001Dto> result = dao.getNotice();
        return result;
    }

}
