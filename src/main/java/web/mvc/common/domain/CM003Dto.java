package web.mvc.common.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

public class CM003Dto {
	private long userSeq;
	private String userId;
	private String userPwd;
	private String userNm;
	private String nickname;
	private String regDate;

	@JsonSerialize(using = ToStringSerializer.class)
	public long getUserSeq() {
		return userSeq;
	}

	public void setUserSeq(long userSeq) {
		this.userSeq = userSeq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
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

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
}
