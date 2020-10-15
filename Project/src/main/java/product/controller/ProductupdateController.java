package product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductupdateController {
	
	final String command = "productupdate.prd";
	final String getPage = "productupdate";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
