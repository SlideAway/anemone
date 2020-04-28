package web.mvc.community.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

public class CT001Dto {
	private long contentSeq;
	private String title;
	private String content;
	private String nickname;
	private String regDate;

	@JsonSerialize(using = ToStringSerializer.class)
	public long getContentSeq() {
		return contentSeq;
	}

	public void setContentSeq(long contentSeq) {
		this.contentSeq = contentSeq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
