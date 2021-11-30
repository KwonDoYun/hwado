package lx.sia.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lx.sia.community.vo.UserVO;


@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate session;
	
	// 회원가입 
	public int registerUser(UserVO vo) throws Exception {
		return session.insert("mapper-sia.registerUser", vo);
	}
	
	// 로그인
	public UserVO login(UserVO vo) throws Exception {
		return session.selectOne("mapper-sia.login", vo);
	}
	
	
	
	// 아이디 중복 확인 
	public int idCheck(UserVO vo) {
		return session.selectOne("mapper-sia.idCheck", vo);
	}

	// 회원탈퇴
	public void userDelete(UserVO vo) {
		session.delete("mapper-sia.userDelete", vo);
		
	}
	
	// 회원수정
	public int userUpdate(UserVO vo) {
		return session.update("mapper-sia.userUpdate", vo);
	}

	public int updateUserPw(UserVO vo) {
		return session.update("mapper-sia.updateUserPw", vo);
	}
	
	// 회원 프로필
	public int setUserImg(UserVO vo) {
		return session.update("mapper-sia.setUserImg", vo);
	}
 	
	// 회원 불러오기
	public List<UserVO> getUser() throws Exception {
		return session.selectList("mapper-sia.getUser");
	}
	
	// 회원 업적 등록
	public int updateAcMent(UserVO vo) throws Exception {
		return session.update("mapper-sia.updateAcMent", vo);
	}
	
	// 업적 불러오기
	public UserVO getAcMent(String userId) throws Exception {
		return session.selectOne("mapper-sia.getAcMent", userId);
	}
	
}
