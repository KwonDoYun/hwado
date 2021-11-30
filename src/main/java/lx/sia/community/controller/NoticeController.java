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

import lx.sia.community.dao.NoticeDAO;
import lx.sia.community.vo.BoardVO;
import lx.sia.community.vo.NoticeVO;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	NoticeDAO dao;
	
	// 일반게시글 리스트 조회 
	@RequestMapping("/list")
	public String getGeneralBoardList(HttpSession session) throws Exception{
		logger.info("show general_board list");
		//session.setAttribute("showBoardWriteUserNickname",nickname);
		List<String> boardNickname = new ArrayList<String>();
		List<NoticeVO> list = dao.list();
		
		if(list!=null) {
			session.setAttribute("notice_list", list);
		}
		return "notice_table";
	}
	
	// 공시게시글 등록 폼 이동 
	@RequestMapping("/writeForm")
	public String writeView() throws Exception{
		logger.info("notice writeView");
		return "notice_table_create";
	}
	
	// 공지 등록 기능 
	@RequestMapping("/register.do")
	public String write(NoticeVO vo) throws Exception{
		logger.info("write");
		int result = dao.write(vo);
		return "redirect:/notice/list";
	}
	
	// 공지 글 보기
	@RequestMapping("/showForm")
	public String showView(HttpSession session, int boardId) throws Exception{
		logger.info("showForm");
		System.out.println("boardId:" + boardId);
		NoticeVO vo = dao.showBoardContent(boardId); 
		System.out.println(vo);
		session.setAttribute("showNoticeContent", vo);
		return "notice_table_show";
	}
	
	// 공지 수정폼 이동
	@RequestMapping("/updateForm")
	public String updateView(HttpSession session, int boardId) throws Exception{
		return "notice_table_update";
	}
	
	// 글 수정 
	@RequestMapping("/update.do")
	public String update(NoticeVO vo, int boardId) throws Exception{
		logger.info("update");
		System.out.println(vo);
		int result = dao.update(vo);
		return "redirect:/notice/showForm?boardId="+vo.getBoardId();
	}
	
	// 글 삭제 
	@RequestMapping("/delete")
	public String delete(int boardId) throws Exception{
		logger.info("delete");
		dao.delete(boardId);
		
		return "redirect:/notice/list";
	}
}
