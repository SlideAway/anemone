package web.mvc.common.dao;

import org.apache.ibatis.annotations.Param;
import web.mvc.common.domain.CM002Dto;
import web.mvc.common.domain.CM002Param;

import java.util.List;

public interface CM002Dao {
	public int check(CM002Param param);

}
