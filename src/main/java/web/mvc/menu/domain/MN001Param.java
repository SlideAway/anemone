package web.mvc.menu.domain;

import web.module.auth.AuthUtils;
import web.module.auth.domain.MemberVO;

public class MN001Param {
	private MemberVO userInfo = AuthUtils.getUserInfo();


	public MemberVO getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(MemberVO userInfo) {
		this.userInfo = userInfo;
	}
}
