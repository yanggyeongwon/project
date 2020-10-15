package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController_outer {

	final String command = "outer.prd";
	final String getPage = "outer";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
