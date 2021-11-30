package lx.sia.community.vo;

import java.sql.Timestamp;

public class ShortVO {
	
	private int boardId;
	private String content;
	private Timestamp regDate;
	private String hashtag;
	private String userId;
	
	@Override
	public String toString() {
		return "ShortVO [boardId=" + boardId + ", content=" + content + ", regDate=" + regDate + ", hashtag=" + hashtag
				+ ", userId=" + userId + "]";
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	

}
