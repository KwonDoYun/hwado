package lx.sia.community.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lx.sia.community.dao.BoardDAO;
import lx.sia.community.dao.CommentDAO;
import lx.sia.community.dao.UserDAO;
import lx.sia.community.vo.BoardVO;
import lx.sia.community.vo.CommentVO;
import lx.sia.community.vo.UserVO;


@Controller
@RequestMapping("/general_board/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardDAO dao;
	
	@Autowired
	CommentDAO cdao;
	
	@Autowired
	UserDAO udao;
	
	// 일반게시글 리스트 조회 
	@RequestMapping("/list")
	public String getGeneralBoardList(HttpSession session) throws Exception{
		logger.info("show general_board list");
		//session.setAttribute("showBoardWriteUserNickname",nickname);
		List<String> boardNickname = new ArrayList<String>();
		List<BoardVO> list = dao.list();
		
		for(BoardVO vo : list) {
			boardNickname.add(dao.getBoardWriteUserNickname(vo.getBoardId()));
		}
		
		if(list!=null) {
			session.setAttribute("generalBoard_list", list);
			session.setAttribute("generalBoard_userNickname", boardNickname);
		}
		
		
		return "long_table";
	}
	
	// 일반게시글 등록 폼 이동 
	@RequestMapping("/writeForm")
	public String writeView() throws Exception{
		logger.info("writeView");
		return "long_table_create";
	}
	
	
	// 일반게시글 등록 기능 
	@RequestMapping("/register.do")
	public String write(HttpServletRequest req, BoardVO boardVO, HttpSession session) throws Exception{
		logger.info("write");
		String userId = ((UserVO)session.getAttribute("user")).getUserId();
		String nickname = dao.getBoardUserNickname(userId);
		boardVO.setNickname(nickname); // 잘됨
		boardVO.setUserId(userId); // 잘됨 
		System.out.println("register:" + boardVO);
		dao.write(boardVO);
		System.out.println(boardVO);
		return "redirect:/general_board/list";
	}
	
	
	
	// 일반게시글 글조회
	@RequestMapping("/showForm")
	public String showView(HttpSession session, int boardId) throws Exception{
		logger.info("showForm");
		dao.updatereviewcnt(boardId);
		BoardVO vo = dao.showBoardContent(boardId); 
		String nickname = dao.getBoardWriteUserNickname(boardId);
		String user_id = vo.getUserId();
		
		UserVO ac_ments = null;

		ac_ments = udao.getAcMent(user_id);

		String uvo = null;
		
		System.out.println("log :" + ac_ments);
		
		if(udao.getAcMent(user_id) != null) {
			uvo = (ac_ments.getAcMents());
		} else {
			ac_ments = udao.getAcMent(null);
		}
		
		
		session.setAttribute("showBoardWriteUserNickname", nickname);
		session.setAttribute("showBoardContent", vo);
		session.setAttribute("showBoardAcMent", uvo);
		
		List<CommentVO> clist = cdao.list();

		if(clist!=null) {
			System.out.println(clist);
			session.setAttribute("comment_list", clist);
			session.setAttribute("nowBoardId", boardId);
		}
		else session.setAttribute("comment_list", null);
		
		return "long_table_show";
	}
	
	// 일반게시글 글수정폼 이동
	@RequestMapping("/updateForm")
	public String updateView(HttpSession session, int boardId) throws Exception{
		logger.info("updateForm");
		System.out.println("boardId"+boardId);

		BoardVO vo = dao.showBoardContent(boardId); 
		String nickname = dao.getBoardWriteUserNickname(boardId);
		session.setAttribute("showBoardWriteUserNickname", nickname);
		session.setAttribute("showBoardContent", vo);
		
		return "long_table_update";
	}
	
	// 글 수정 
	@RequestMapping("update.do")
//	@RequestMapping("/showForm")
	public String update(BoardVO boardVO) throws Exception{
		logger.info("update");
		dao.update(boardVO);
		
		return "redirect:/general_board/showForm?boardId="+boardVO.getBoardId();
		

//		return "redirect:/general_board/list";
	}
	
	// 글 삭제 
	@RequestMapping("/delete")
	public String delete(int boardId) throws Exception{
		logger.info("delete");
		dao.delete(boardId);
		
		return "redirect:/general_board/list";
	}
	
}
