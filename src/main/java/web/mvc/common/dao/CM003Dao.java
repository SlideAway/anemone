package web.mvc.common.dao;

import org.apache.ibatis.annotations.Param;
import web.mvc.common.domain.CM003Param;

public interface CM003Dao {
	public String findId(CM003Param param);
	public Long findPass(CM003Param param);
	public void updatePassword(@Param("userSeq") long userSeq, @Param("password") String password);
}
