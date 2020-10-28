package admin.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import orderdetails.model.Orderdetails;
import orderdetails.model.OrderdetailsDao;


@Controller
public class admin {

	final String command = "admin.ad";
	final String getPage = "admin";
	
	@Autowired
	OrderdetailsDao dao;
	
	@RequestMapping(command)
	public ModelAndView doAction(Model model) {
		
		int cnt = dao.delivery();
		int cnt2 = dao.delivery2();
		int cnt3 = dao.delivery3();
		
		model.addAttribute("cnt",cnt);
		model.addAttribute("cnt2",cnt2);
		model.addAttribute("cnt3",cnt3);
		System.out.println("cnt:"+cnt);
		
		List<Orderdetails> lists = new ArrayList<Orderdetails>();
		lists = dao.getSelectOrder();
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists",lists);
		mav.setViewName(getPage);
		return mav;
	}
}
