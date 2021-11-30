package lx.sia.community.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lx.sia.community.dao.UserDAO;
import lx.sia.community.vo.UserVO;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	UserDAO dao;
	
	// 회원 리스트 조회 
	@RequestMapping("/admin")
	public String getGenralBoardList(HttpSession session) throws Exception{
		logger.info("show admin");
		
		List<UserVO> uvo = dao.getUser();
		
		session.setAttribute("userInfo", uvo);
		
		return "admin";
	}
	
	// 버튼 클릭시 속성 추가
	@RequestMapping("admin_registe.do")
	public String registerAcMent(HttpSession session, String userId, String acMents) throws Exception{
		
		System.out.println("admin : "+userId+ " " +acMents);
		UserVO vo = (UserVO)session.getAttribute("user");
		vo.setAcMents(acMents);
		vo.setUserId(userId);
		
		System.out.println(vo.getAcMents() + " " + vo.getUserId());
		
		dao.updateAcMent(vo);
		
		return "redirect:/admin";
	}

	
	// 404
	@RequestMapping("/404")
	public String get404() throws Exception{
		logger.info("show 404");
		
		return "404";
	}
	
	
}
