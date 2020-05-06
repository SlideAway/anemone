package web.module.auth.dao;

import org.apache.ibatis.annotations.Param;
import web.module.auth.domain.MemberVO;

public interface MemberMapper {
	public MemberVO getUserInfo(@Param("username") String userId);
}
