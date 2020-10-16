package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController_shoes {

	final String command = "shoes.prd";
	final String getPage = "shoes";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
