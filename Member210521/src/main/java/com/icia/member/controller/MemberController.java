package com.icia.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;

@Controller
public class MemberController {	
	
	
	@Autowired
	private	MemberService ms;
	
	private ModelAndView mav;
	
	@RequestMapping(value="/")
	public String home() {
		return "home";
	}
	//home.jsp에서 joinpage 링크클릭 요청을 하면
	//아래 메소드가 호출됨
	@RequestMapping(value ="/joinpage")
	public String joinPage() {
		return "memberjoin";
	}
	
	@RequestMapping(value = "/memberjoin")
	public ModelAndView memberJoin(@ModelAttribute MemberDTO member) {
		mav=ms.memberJoin(member);
		//회원가입이 완료되면 로그인 페이지가 출력되도록 함.
		return mav;
	}
	
	@RequestMapping(value="/memberlist")
	public ModelAndView memberList() {
		mav=ms.memberList();
		return mav;
	}
	
	@RequestMapping(value="/memberview")
	public ModelAndView memberView(@RequestParam("mid")String mid) {
		mav=ms.memberView(mid);
		return mav;
	}
	

	
}
	
	