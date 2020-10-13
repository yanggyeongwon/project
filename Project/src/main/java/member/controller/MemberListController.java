package member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberListController {
	
	final String command = "/list.me";
	final String getPage = "member";
	
	@RequestMapping(command)
	public String doAction() {
		return getPage;
	}
}
