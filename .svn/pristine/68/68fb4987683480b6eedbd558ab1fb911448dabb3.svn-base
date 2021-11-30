package lx.sia.community.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lx.sia.community.dao.MainDAO;
import lx.sia.community.vo.BoardVO;
import lx.sia.community.vo.NoticeVO;

@Controller 
public class MainController {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public static HashMap<String, ArrayList<String>> map;
	
	@Autowired
	MainDAO dao;
	
	@RequestMapping("/main")
	public String startCrawl(Model model) throws IOException {
		
		ArrayList<String> al1 = new ArrayList<>();
		ArrayList<String> al2 = new ArrayList<>();
		
		List<BoardVO> bVO1 = dao.getLatestGenralBoard();
		List<NoticeVO> NVO = dao.getLatestNotice();
		
		int userCount = dao.getUserCount();
		int newUserCount = dao.getNewUserCount();
		
		model.addAttribute("userCnt", userCount);
		model.addAttribute("userNewCnt", newUserCount);
		model.addAttribute("latestGeralBoard", bVO1);
		model.addAttribute("latestNotice", NVO);
		
		String url = "https://news.naver.com/main/main.naver?mode=LSD&mid=shm&sid1=101";
		Document doc = Jsoup.connect(url).get();
		Elements elements = doc.getElementsByAttributeValue("class", "list_text_inner");
		
		
		for(int i=0; i<5; i++) {
			Element articleElement = elements.get(i);
			Elements aElements = articleElement.select("a");
			Element aElement = aElements.get(0);
			String href = aElement.attr("href");
			String print = aElement.text();
			al1.add(href);
			al2.add(print);
		}
		
		model.addAttribute("href", al1);
		model.addAttribute("print", al2);
		
		return "main";
	}
	
	

}
