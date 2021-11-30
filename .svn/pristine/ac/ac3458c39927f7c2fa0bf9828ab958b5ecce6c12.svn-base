package lx.sia.community.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lx.sia.community.dao.BoardDAO;
import lx.sia.community.dao.ShortDAO;
import lx.sia.community.dao.UserDAO;
import lx.sia.community.utills.UploadFileUtils;
import lx.sia.community.vo.BoardVO;
import lx.sia.community.vo.ShortVO;
import lx.sia.community.vo.UserVO;

@Controller 
public class LoginController {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	UserDAO dao;
	
	@Autowired
	BoardDAO bdao;
	
	@Autowired
	ShortDAO sdao;
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping("/registerUser")
	public String getForm() throws Exception {
		logger.info("getform register");
		return "create_id_pw";
	}
	
	
	@RequestMapping("register_user.do")
	public String register(HttpServletRequest req, UserVO vo, String userPw) throws Exception {
		int result = dao.idCheck(vo);
		
		if(result==1) { // 아이디가 중복되면,
			return "redirect:/registerUser";
		}
		else if(result==0) { // 아이디가 중복하지 않으면,
			vo.setUserPw(pwdEncoder.encode(userPw));
			System.out.println("address1:" + vo.getAddress1());
			int regChk = dao.registerUser(vo);
		}
		return "redirect:/";
	}
	
	@RequestMapping("address1Check.do")
	@ResponseBody
	public String getAddress1Check(String address1, UserVO vo) throws Exception {
		logger.info("address1 check");
		logger.info("output address1 :" + address1);
		
		vo.setAddress1(address1);
		
		return vo.getAddress1();
	}
	
	@RequestMapping("mailCheck.do")
	@ResponseBody
	public String getMailCheck(String email) throws Exception {
		logger.info("email check");
		logger.info("input email:" + email);
		
		Random random = new Random();
		int checkNum = random.nextInt(888888)+111111;
		logger.info("인증번호 : " + checkNum);
		
		/* 이메일 보내기 */
        String setFrom = "siacommunity01@gmail.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "SIA 홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
        
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
        
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        String num = Integer.toString(checkNum);
        
        return num;

		
	}
	
	@RequestMapping("login_action.do")
	public String lgoin(HttpServletRequest req, HttpServletResponse response, HttpSession session, RedirectAttributes rttr, UserVO vo) throws Exception {
		logger.info("post login_action");
		System.out.println("vo:"+vo);
		UserVO loginVO = dao.login(vo);
		System.out.println("loginVO:" + loginVO);
		boolean pwdMatch = false;
		
		if(loginVO!=null) pwdMatch = pwdEncoder.matches(vo.getUserPw(), loginVO.getUserPw());
		
		if(loginVO != null && pwdMatch == true) {
			logger.info("login success");
			session.setAttribute("user", loginVO);
			return "redirect:/main";
		}
		else {
			logger.info("login fail");
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
            return "redirect:/";
		}
	}
	
	@RequestMapping("/profile")
	public String getProfileForm(HttpSession session) throws Exception {
		logger.info("profile");
		List<BoardVO> bvo = bdao.list();
		List<ShortVO> svo = sdao.getShortList();
		
		session.setAttribute("actvityGeneral", bvo);
		session.setAttribute("actvityShort", svo);
		return "user_activities";
	}
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) throws Exception {
		logger.info("logout");
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("userInfoUpdate.do")
	public String userInfoUpdate(HttpSession session, String nickname, String email, String userId) throws Exception {
		logger.info("user update");
		
		// System.out.println("nickname: " + nickname);
		UserVO vo = (UserVO)session.getAttribute("user");
		vo.setNickname(nickname);
		vo.setEmail(email);
		// System.out.println(vo);
		int result = dao.userUpdate(vo);
		// System.out.println("result: "+ result);
		UserVO user = dao.login(vo);
		session.setAttribute("user", user);
		// System.out.println("user: " + user);
		return "redirect:/profile";
	}
	
	@RequestMapping("userNicknameUpdate.do")
	@ResponseBody 
	public int userNicknameUpdate(HttpSession session, String nickname) throws Exception {
		logger.info("userNickname update");
		System.out.println(nickname);
		UserVO vo = (UserVO)session.getAttribute("user");
		vo.setNickname(nickname);
		
		int result = dao.userUpdate(vo);
		UserVO user = dao.login(vo);
		session.setAttribute("user", user);
		return result;
	}
	
	@RequestMapping("updateUserPw.do")
	public String updateUserPw(HttpSession session, String newpw) throws Exception {
		logger.info("userPw update");
		System.out.println(newpw);
		UserVO vo = (UserVO)session.getAttribute("user");
		vo.setUserPw(pwdEncoder.encode(newpw));
		
		int result = dao.updateUserPw(vo);
		UserVO user = dao.login(vo);
		session.setAttribute("user", user);
		return "redirect:/main";
	}
	
	
	
	@RequestMapping("userDelete.do")
	public String userDelete(HttpSession session) throws Exception {
		logger.info("user delete");
		dao.userDelete((UserVO)session.getAttribute("user"));
		
		session.invalidate();
		return "redirect:/";
	}
	
	@ResponseBody 
	@RequestMapping("idCheck.do")
	public int idCheck(UserVO vo) throws Exception {
		logger.info("idCheck");
		int result = dao.idCheck(vo);
		return result;
	}
	
	@RequestMapping("/upload.do")
	public String postUserImgRegister(HttpSession session, MultipartFile file) throws IOException, Exception {
		logger.info("upload.do");
		
		UserVO vo = (UserVO)session.getAttribute("user");
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		vo.setUserImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		vo.setUserThumbimg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
		dao.setUserImg(vo);
		UserVO user = dao.login(vo);
		session.setAttribute("user", user);
		
		return "redirect:/profile";
	}
	
	
	
}
