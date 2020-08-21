package web.mvc.user.domain;

import web.module.auth.AuthUtils;
import web.module.auth.domain.MemberVO;

public class US001Dto {
	private MemberVO userInfo = AuthUtils.getUserInfo();

	public MemberVO getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(MemberVO userInfo) {
		this.userInfo = userInfo;
	}
}
