package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController_pants {

	final String command = "pants.prd";
	final String getPage = "pants";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
