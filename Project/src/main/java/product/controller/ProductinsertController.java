<<<<<<< HEAD:Project/src/main/java/admin/Controller/productinsert.java
package admin.Controller;
=======
package product.controller;
>>>>>>> dd9d5e8d63cf1ebc1f7a009bb60e305d52bb16db:Project/src/main/java/product/controller/ProductinsertController.java

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import product.model.ProductDAO;

@Controller
public class ProductinsertController {
	
	final String command = "productinsert.prd";
	final String getPage = "productinsert";
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping(command)
	public String doAction() {
		
		dao.GetInsertProduct();
		
		return getPage;
	}
}
