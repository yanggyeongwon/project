package admin.adminPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class productinsert {
	
	final String command = "productinsert.ad";
	final String getPage = "productinsert";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
