package lx.sia.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lx.sia.community.vo.ShortVO;

@Repository
public class ShortDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	// 전체 게시글 조회
	public List<ShortVO> getShortList() throws Exception {
		return session.selectList("mapper-short.getShortList");
	}
	
	// 해시태그 눌렀을 때 게시글 조회
	public List<ShortVO> getListByHashTag(String hashtag) throws Exception {
		return session.selectList("mapper-short.getListByHashTag", hashtag);
	}
	
	// 해시태그 목록만 보여주기
	public List<String> getHashtag() throws Exception {
		return session.selectList("mapper-short.getHashtag");
	}
	
	// 게시글 등록
	public int registerShortBoard(ShortVO vo) throws Exception {
		return session.insert("mapper-short.registerShortBoard", vo);
	}
	
	
	// 게시글 수정
	public int updateShortBoard(ShortVO vo) throws Exception {
		return session.update("mapper-short.updateShortBoard", vo);
	}
	
	// 게시글 삭제
	public int deleteShortBoard(int boardId) {
		return session.delete("mapper-short.deleteShortBoard", boardId);
	}
	
}
