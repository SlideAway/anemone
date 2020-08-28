package web.mvc.manage.domain;

import web.module.auth.AuthUtils;
import web.module.auth.domain.MemberVO;

public class MGR004Param {
	private MemberVO userInfo = AuthUtils.getUserInfo();

	public MemberVO getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(MemberVO userInfo) {
		this.userInfo = userInfo;
	}
}
