package productinq.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import productinq.model.Productinq;
import productinq.model.ProductinqDAO;

@Controller
public class ProductinqinsertController {

	final String command = "insert.pro";
	final String getPage = "redirect:/list.bd";
	
	@Autowired
	ProductinqDAO dao;
	
	
	@RequestMapping(command)
	public String doAction(Productinq productinq) {

		 dao.inqInsert(productinq);
		 Productinq prodcutinqs =  dao.select(productinq.getPinum());
		 return getPage;
	}
}
