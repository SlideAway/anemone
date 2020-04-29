package web.mvc.community.dao;

import org.apache.ibatis.annotations.Param;
import web.mvc.community.domain.CT001Dto;
import web.mvc.community.domain.CT001Param;

import java.util.List;

public interface CT001Dao {
	public List<CT001Dto> getNotice(CT001Param param);
	public int getCount(CT001Param param);
	public CT001Dto getDetail(@Param("contentSeq") long contentSeq);
	public void saveNotice(CT001Param param);

}
