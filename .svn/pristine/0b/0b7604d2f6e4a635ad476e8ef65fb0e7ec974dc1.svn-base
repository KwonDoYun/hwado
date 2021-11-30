package lx.sia.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lx.sia.community.vo.BoardVO;
import lx.sia.community.vo.NoticeVO;

@Repository
public class MainDAO {

	@Autowired
	SqlSessionTemplate session;

	public int getUserCount() {
		return session.selectOne("mapper-main.getUserCount");
	}

	public int getNewUserCount() {
		return session.selectOne("mapper-main.getNewUserCount");
	}

	public List<BoardVO> getLatestGenralBoard() {
		return session.selectList("mapper-main.getLatestGenralBoard");
	}

	public List<NoticeVO> getLatestNotice() {
		return session.selectList("mapper-main.getLatestNotice");
	}
	
}
