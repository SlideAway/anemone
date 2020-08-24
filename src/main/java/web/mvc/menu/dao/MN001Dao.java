package web.mvc.menu.dao;

import com.sun.org.glassfish.gmbal.ParameterNames;
import org.apache.ibatis.annotations.Param;
import web.mvc.menu.domain.MN001Dto;

import java.util.List;

public interface MN001Dao {
	public List<MN001Dto> getHorizen(@Param("auth") int userRole);
	public List<MN001Dto> getTopMenu(@Param("auth") int userRole);
	public List<MN001Dto> getLeafMenu(@Param("auth") int userRole);

}
