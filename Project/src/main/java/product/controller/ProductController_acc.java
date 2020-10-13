package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController_acc {

	final String command = "acc.prd";
	final String getPage = "acc";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
