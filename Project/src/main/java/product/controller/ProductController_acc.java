package product.controller;

<<<<<<< HEAD
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
=======
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import product.model.Product;
import product.model.ProductDAO;
>>>>>>> yyanggang

@Controller
public class ProductController_acc {

	final String command = "acc.prd";
	final String getPage = "acc";
	
<<<<<<< HEAD
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
=======
	@Autowired
	ProductDAO dao;
	
	@RequestMapping(command)
	public ModelAndView doAction() {
		
		List<Product> lists =  new ArrayList<Product>();
		
		lists = dao.selectAcc();
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists",lists);
		
		mav.setViewName(getPage);
		
		return mav;
>>>>>>> yyanggang
	}
}
