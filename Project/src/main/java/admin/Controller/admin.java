package admin.Controller;

<<<<<<< HEAD
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


import orderdetails.model.OrderdetailsDao;


>>>>>>> yyanggang
@Controller
public class admin {

	final String command = "admin.ad";
	final String getPage = "admin";
	
<<<<<<< HEAD
	@RequestMapping(command)
	public String doAction() {
=======
	@Autowired
	OrderdetailsDao dao;
	
	@RequestMapping(command)
	public String doAction(Model model) {
		
		int cnt = dao.delivery();
		int cnt2 = dao.delivery2();
		int cnt3 = dao.delivery3();
		
		model.addAttribute("cnt",cnt);
		model.addAttribute("cnt2",cnt2);
		model.addAttribute("cnt3",cnt3);
		System.out.println("cnt:"+cnt);
		
>>>>>>> yyanggang
		
		return getPage;
	}
}
