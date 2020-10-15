package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController_top {

	final String command = "top.prd";
	final String getPage = "top";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
