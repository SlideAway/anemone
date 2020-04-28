package web.module.auth.domain;

public class AuthInfo {
	private String userId;
	private String userNm;
	private String nickname;
	private String userRole;

	public AuthInfo(String userId, String userNm, String userRole) {
		this.userId = userId;
		this.userNm = userNm;
		this.userRole = userRole;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
}
