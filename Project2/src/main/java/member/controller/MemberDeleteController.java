package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberDao;



@Controller
public class MemberDeleteController {
	final String command = "/delete.me";
	final String gotoPage = "index";
	
	@Autowired
	MemberDao memberDao;
	
	@RequestMapping(command)
	public String doAction(@RequestParam(value="mnum",required=true) int mnum) {
		
		memberDao.deleteData(mnum);
		
		return gotoPage;
		
	}
	
}
