package lx.sia.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lx.sia.community.vo.NoticeVO;

@Repository
public class NoticeDAO {
	@Autowired
	SqlSessionTemplate session;
	
	public List<NoticeVO> list() {
		return session.selectList("mapper-notice.list");
	}

	public int write(NoticeVO vo) {
		return session.insert("mapper-notice.insert", vo);
		
	}

	public NoticeVO showBoardContent(int boardId) {
		return session.selectOne("mapper-notice.showBoardContent", boardId);
	}

	public int update(NoticeVO vo) {
		return session.insert("mapper-notice.update", vo);
	}

	public void delete(int boardId) {
		session.delete("mapper-notice.delete", boardId);
		
	}

}
