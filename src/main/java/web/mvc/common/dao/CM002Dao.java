package web.mvc.common.dao;

import web.mvc.common.domain.CM002Param;

public interface CM002Dao {
    public int get(CM002Param param);
    public int save(CM002Param param);
}
