package product.controller;

<<<<<<< HEAD
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
=======

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import product.model.Product;
import product.model.ProductDAO;
>>>>>>> yyanggang

@Controller
public class ProductController_page {

	final String command = "product.prd";
	final String getPage = "product";
	
<<<<<<< HEAD
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
=======
	@Autowired
	ProductDAO dao;
	
	@RequestMapping(command)
	public ModelAndView doAction(HttpServletRequest request) {
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		System.out.println("pnum: "+ pnum);
		
		Product product = dao.getData(pnum);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("product",product);
		mav.setViewName(getPage);
		
		return mav;
>>>>>>> yyanggang
	}
}
