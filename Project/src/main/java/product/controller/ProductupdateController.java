<<<<<<< HEAD:Project/src/main/java/admin/Controller/productupdate.java
package admin.Controller;
=======
package product.controller;
>>>>>>> dd9d5e8d63cf1ebc1f7a009bb60e305d52bb16db:Project/src/main/java/product/controller/ProductupdateController.java

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
