package lx.sia.community.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lx.sia.community.vo.BoardVO;

@Repository
public class BoardDAO {
	@Autowired
	SqlSessionTemplate session;
	
	// �Խñ� �ۼ�
	public int write(BoardVO boardVO) throws Exception {
		return session.insert("mapper-Board.insert", boardVO);
	}
	
	// �Խù� ��� ��ȸ
	public List<BoardVO> list() throws Exception {
		return session.selectList("mapper-Board.list");
	}
	
	// �Խù� ����
	public void update(BoardVO boardVO) throws Exception {
		session.update("mapper-Board.update", boardVO);
	}
	
	// �Խù� ����
	public void delete(int boardId) throws Exception {
		session.delete("mapper-Board.delete", boardId);
	}
	
	// �Խñ� ��ȸ 
	public BoardVO showBoardContent(int boardId) throws Exception {
		return session.selectOne("mapper-Board.showBoardContent", boardId);
	}
	
	// 유저아이디 닉네임 얻기 
	public String getBoardUserNickname(String userId) {
		return session.selectOne("mapper-Board.getUserNickname", userId);
	}
	
	// 글 등록자 닉네임 얻기 
	public String getBoardWriteUserNickname(int boardId) {
		return session.selectOne("mapper-Board.getBoardWriteUserNickname", boardId);
	}
	
	// 문의글 조회수 올리기
	public int updatereviewcnt(int boardId) throws Exception {
		return session.update("mapper-Board.updatereviewcnt", boardId);
		
	}
}
