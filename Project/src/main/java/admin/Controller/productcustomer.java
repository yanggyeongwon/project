package admin.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class productcustomer {
	
	final String command = "productcustomer.ad";
	final String getPage = "productcustomer";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
