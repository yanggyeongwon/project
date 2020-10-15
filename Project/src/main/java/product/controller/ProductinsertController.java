package product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductinsertController {
	
	final String command = "productinsert.prd";
	final String getPage = "productinsert";
	
	@Autowired
	
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
