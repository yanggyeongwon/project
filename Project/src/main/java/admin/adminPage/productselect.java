package admin.adminPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class productselect {
	
	final String command = "productselect.ad";
	final String getPage = "productselect";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}

}
