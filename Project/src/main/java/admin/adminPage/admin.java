package admin.adminPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class admin {

	final String command = "admin.ad";
	final String getPage = "admin";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
