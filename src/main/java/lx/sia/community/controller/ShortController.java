package lx.sia.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lx.sia.community.dao.ShortDAO;
import lx.sia.community.vo.ShortVO;
import lx.sia.community.vo.UserVO;

@Controller
@RequestMapping("/short_board/*")
public class ShortController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	ShortDAO dao;
	
	// 전체 게시글 조회
	@RequestMapping("/list")
	public String getShortBoard(HttpSession session) throws Exception {
		logger.info("short_board list");
		
		List<ShortVO> list = dao.getShortList(); // 전체 게시글 가져오기
		List<String> hashtagList = dao.getHashtag(); // 전체 해시태그 목록 가져오기
		System.out.println(list);
		System.out.println(hashtagList);
		session.setAttribute("shortBoardlist", list); // 전체 게시글 저장
		session.setAttribute("hashtagList", hashtagList); // 전체 해시태그 저장
		return "line_board"; //jsp 파일 경로
	}
	
	// 해시태그 눌러서 조회
	@RequestMapping("/hashtag")
	public String getHashtagLine(String hashtag, HttpSession session) throws Exception {
		logger.info("short_board hashtag");
		System.out.println("hashtag:" + hashtag);
		List<ShortVO> list = dao.getListByHashTag(hashtag);
		System.out.println(hashtag + ": " + list);
		session.setAttribute("shortBoardlist", list);
		return "line_board";
	}
	
	// 등록
	@RequestMapping("register.do")
	public String registerShortBoard(HttpSession session, ShortVO vo) throws Exception {
		logger.info("short_board register");
		
		System.out.println("input vo=" + vo);
		
		String userId = ((UserVO)session.getAttribute("user")).getUserId();
		vo.setUserId(userId);
		int result = dao.registerShortBoard(vo);
		return "redirect:/short_board/list";
	}
	
	// 수정
	@RequestMapping("update.do")
	public String update(int boardId, ShortVO vo) throws Exception {
		logger.info("short_board update");
		System.out.println(boardId+"수정");
		vo.setBoardId(boardId);
		int result = dao.updateShortBoard(vo);
		return "redirect:/short_board/list"; 
	}
	
	// 삭제
	@RequestMapping("delete.do")
	public String delete(int boardId, ShortVO vo) throws Exception {
		logger.info("short_board delete");
		System.out.println("delete board_id : " + boardId);
		System.out.println("delete vo board_id : " + vo.getBoardId());
		int result = dao.deleteShortBoard(vo.getBoardId());
		return "redirect:/short_board/list";
	}
		
}
