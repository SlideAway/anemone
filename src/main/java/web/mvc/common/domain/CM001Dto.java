package web.mvc.common.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

import java.util.List;


public class CM001Dto {
    private long boardSeq;
    private String title;
    private String content;
    private String regDate;
    private String nickname;

    private List<CM001Dto> noticeList;

    @JsonSerialize(using = ToStringSerializer.class)
    public long getBoardSeq() {
        return boardSeq;
    }

    public void setBoardSeq(long boardSeq) {
        this.boardSeq = boardSeq;
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

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

//    public List<CM001Dto> getNoticeList() {
//        return noticeList;
//    }
//
//    public void setNoticeList(List<CM001Dto> noticeList) {
//        this.noticeList = noticeList;
//    }
}
