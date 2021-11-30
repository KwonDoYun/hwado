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
import org.springframework.web.bind.annotation.ResponseBody;

import lx.sia.community.dao.CommentDAO;
import lx.sia.community.vo.BoardVO;
import lx.sia.community.vo.CommentVO;
import lx.sia.community.vo.UserVO;

@Controller
@RequestMapping("/comment/*")
public class CommentController {
	private static final Logger logger = LoggerFactory.getLogger(CommentController.class);
	
	@Autowired
	CommentDAO Cdao;
	
	//댓글 작성
	@RequestMapping("/CommentRegister.do")
	public String WriteComment(int boardId, HttpServletRequest req, String commentContent, CommentVO commentVO, HttpSession session) throws Exception {
		logger.info("WriteComment");
		String userId = ((UserVO)session.getAttribute("user")).getUserId();
		commentVO.setUserId(userId);
		commentVO.setBoardId(boardId);
		commentVO.setCommentContent(commentContent);
		System.out.println("boardId"+boardId);
		
		System.out.println("register:" + commentVO);
		Cdao.InsertComment(commentVO);
		System.out.println(commentVO);
		return "redirect:/general_board/showForm?boardId="+boardId;
	}
	
	// 댓글 삭제
	@RequestMapping("/delete")
	public String DeleteComment(HttpSession session, int commentId) throws Exception{
		logger.info("DeleteComment");
		
		int result = Cdao.DeleteComment(commentId);
		List<CommentVO> list = Cdao.list();
		
		if(list!=null) {
			System.out.println(list);
			session.setAttribute("comment_list", list);
			
		}
		
		int boardId = (int)session.getAttribute("nowBoardId");
		System.out.println("boardId:"+boardId);
		return "redirect:/general_board/showForm?boardId="+ boardId;
	}
	
	// 댓글 내용 가져오기 
	@RequestMapping("/getByIdContent")
	@ResponseBody
	public String getContent(int commentId) {
		return Cdao.getByIdContent(commentId);
	}
}
