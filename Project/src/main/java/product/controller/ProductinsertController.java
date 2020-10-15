package product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import product.model.Product;
import product.model.ProductDAO;

@Controller
public class ProductinsertController {
	
	final String command = "productinsert.prd";
	final String getPage = "productinsert";
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping(command)
	public String doAction(Product product) {
		
		dao.GetInsertProduct();
		
		return getPage;
	}
}
