package web.mvc.common.dao;

import web.mvc.common.domain.CM001Dto;
import web.mvc.common.domain.CM001Param;

import java.util.List;

public interface CM001Dao {
    public List<CM001Dto> getNotice();
    public List<CM001Dto> getFree();
}
