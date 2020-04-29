package web.mvc.community.dao;

import org.springframework.web.bind.annotation.RequestParam;
import web.mvc.community.domain.CT002Dto;
import web.mvc.community.domain.CT002Param;

import java.util.List;

public interface CT002Dao {
	public List<CT002Dto> getList(CT002Param param);
	public CT002Dto getDetail(@RequestParam("contentSeq") long contentSeq);
}
