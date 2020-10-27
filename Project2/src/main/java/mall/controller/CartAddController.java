package mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.cart.MyCartList;
import product.model.Product;

@Controller
public class CartAddController { // ProductDetailView.jsp���� �ֹ� Ŭ������ �� �Ѿ��
	final String command = "add.mall";
	final String gotoPage = "redirect:/list.mall";  // CartListController
	
	@RequestMapping(value=command) 
	public String doAction(Product product, HttpSession session) {
		
		if(session.getAttribute("loginInfo") == null) {
			session.setAttribute("destination",
									"redirect:/detail.prd?num="+product.getNum());
			
			return "redirect:/loginForm.me";
		}
		else {
			
			MyCartList mycart = (MyCartList)session.getAttribute("mycart");
			
			if(mycart == null) {
				mycart = new MyCartList();
			}
			
			mycart.addOrder(product.getNum(), product.getOrderqty());
			
			session.setAttribute("mycart", mycart);
			
			return gotoPage;
		}
	}
	
}








