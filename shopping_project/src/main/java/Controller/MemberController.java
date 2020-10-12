package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	final String command = "/index.mem";
	final String getPage = "index";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
