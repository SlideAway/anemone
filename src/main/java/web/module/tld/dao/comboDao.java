package web.module.tld.dao;

import org.apache.ibatis.annotations.Param;
import web.module.tld.domain.comboDto;

import java.util.List;

public interface comboDao {
	public List<comboDto> getComboList(@Param("code") String code);
	public List<comboDto> getRoleList(@Param("code") String code);
}
