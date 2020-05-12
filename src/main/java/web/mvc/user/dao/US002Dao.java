package web.mvc.user.dao;

import org.apache.ibatis.annotations.Param;
import web.mvc.user.domain.US002Dto;

public interface US002Dao {
	public US002Dto getPwd(long userSeq);
	public US002Dto get(long userSeq);
}
