package admin.adminPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class productupdate {
	
	final String command = "productupdate.ad";
	final String getPage = "productupdate";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
