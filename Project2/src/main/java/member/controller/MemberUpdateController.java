package member.controller;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;


@Controller
public class MemberUpdateController {
	final String command="/update.me";
	final String getPage = "update";
	final String gotoPage = "/index";
	
	@Autowired
	MemberDao memberDao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doAction(@RequestParam(value="mid",required=true) String mid,
							Model model, HttpSession session) {
		
		System.out.println(session.getAttribute("loginInfo"));
		
		
		Member member = memberDao.getData(mid);
		model.addAttribute("member", member);
		
		return getPage;
	}
	
	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doAction(@Valid Member member, BindingResult result) {
		
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()) {
			System.out.println("에러발생");
			mav.setViewName(getPage);
			return mav;
		}
	
		
		memberDao.updateData(member);
		mav.setViewName(gotoPage);
		return mav;
	}
	
}


