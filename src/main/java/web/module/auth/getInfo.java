package web.module.auth;

import com.google.gson.JsonObject;
import net.sf.json.JSONObject;
import org.springframework.security.core.Authentication;
import web.module.auth.domain.CustomUser;
import web.module.auth.domain.MemberVO;
import web.module.date.web.dateController;

public class getInfo {
	public JSONObject get(MemberVO vo) {
		dateController date = new dateController();
		JSONObject json = new JSONObject();
		json.put("userId", vo.getUserId());
		json.put("userNm", vo.getUserNm());
		json.put("nickname", vo.getNickname());
		json.put("roleNm", vo.getRoleNm());
		json.put("email", vo.getEmail());
		json.put("regDate", date.dateFmt(vo.getRegDate()));

		return json;
	}

	public long getSeq(Authentication auth) {
		CustomUser userinfo = (CustomUser)auth.getPrincipal();
		return userinfo.getMember().getUserSeq();
	}
}
