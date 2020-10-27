package orderdetails.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import orderdetails.model.Orderdetails;
import orderdetails.model.OrderdetailsDao;

@Controller
public class deliveryUpdateController {
	
	final String command = "/orderupdate.ord";
	
	@Autowired
	OrderdetailsDao dao;
	
	
	@RequestMapping(value = command , method = RequestMethod.GET)
	public String doAction(@RequestParam(value="onum",required=true) int onum, Model model) {
		
		Orderdetails orderdetails = dao.getData(onum);
		model.addAttribute("orderdetails",orderdetails);
		
		return null;
	}
	
}
