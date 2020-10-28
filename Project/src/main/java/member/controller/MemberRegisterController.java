package member.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;


@Controller
public class MemberRegisterController {
	final String command = "register.me";
	final String getPage = "register";
	final String gotoPage = "redirect:/login.me"; 
	
	@Autowired
	MemberDao memberDao;

	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction() {
		System.out.println("get요청입니다.");
		return getPage;
	}

	@RequestMapping(value=command, method=RequestMethod.POST) 
	public ModelAndView doAction(@Valid Member member/* ,Errors error */) {
		System.out.println("post요청입니다.");
		ModelAndView mav = new ModelAndView();
		System.out.println("11");
		
		/*
		 * if(error.hasErrors()) { System.out.println("22"); mav.setViewName(getPage);
		 * return mav; }
		 */
		System.out.println("인설트아직 안됨");
		memberDao.insertData(member);
		System.out.println("인설트됨");
		
		 
		mav.setViewName(gotoPage);
		return mav;
	}
	}


