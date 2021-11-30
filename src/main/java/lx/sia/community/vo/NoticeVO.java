package lx.sia.community.vo;

import java.sql.Timestamp;

public class NoticeVO {
	private int boardId;
	private String boardTitle;
	private String content;
	private Timestamp regDate;
	
	
	
	@Override
	public String toString() {
		return "NoticeVO [boardId=" + boardId + ", boardTitle=" + boardTitle + ", content=" + content + ", regDate="
				+ regDate + "]";
	}
	
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
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
	
	

}
