package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController_page {

	final String command = "product.prd";
	final String getPage = "product";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
