package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController_best {

	final String command = "best.prd";
	final String getPage = "best";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
