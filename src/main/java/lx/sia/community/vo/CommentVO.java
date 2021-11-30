package lx.sia.community.vo;

import java.sql.Timestamp;

public class CommentVO {
	
	private int commentId; 
	private String commentContent;
	private Timestamp commentRegDate;
	private String userId;
	private int boardId;
	
	@Override
	public String toString() {
		return "CommentVO [commentId=" + commentId + ", commentContent=" + commentContent + ", commentRegDate="
				+ commentRegDate + ", userId=" + userId + ", boardId=" + boardId + "]";
	}

	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	
	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Timestamp getCommentRegDate() {
		return commentRegDate;
	}

	public void setCommentRegDate(Timestamp commentRegDate) {
		this.commentRegDate = commentRegDate;
	}

	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}

	
	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	
	
	
}
