package lx.sia.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lx.sia.community.vo.BoardVO;
import lx.sia.community.vo.CommentVO;

@Repository
public class CommentDAO {
	@Autowired
	SqlSessionTemplate session;
	
	//댓글 목록
	public List<CommentVO> list() throws Exception {
		return session.selectList("mapper-Comment.CommentList");
	}
	
	//댓글 작성
	public int InsertComment(CommentVO commentVO) throws Exception{
		return session.insert("mapper-Comment.insertComment", commentVO);
	}
	
	//댓글 수정
	public void UpdateComment(CommentVO commentVO) throws Exception{
		session.update("mapper-Comment.update", commentVO);
	}
	
	//댓글 삭제
	public int DeleteComment(int commentId) throws Exception{
		return session.delete("mapper-Comment.DeleteComment", commentId);
	}
		
	// 댓글 내용 얻기
	public BoardVO ShowCommentContent(int commentId) throws Exception {
		return session.selectOne("mapper-Comment.showCommentContent", commentId);
	}
	
	
	// 댓글 번호로 내용 얻기 
	public String getByIdContent(int commentId) {
		return session.selectOne("mapper-Comment.getByIdContent", commentId);
	}
}
