package admin.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class productinsert {
	
	final String command = "productinsert.ad";
	final String getPage = "productinsert";
	
	@Autowired
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
