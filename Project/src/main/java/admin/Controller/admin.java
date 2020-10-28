package admin.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import board.model.BoardBean;
import board.model.BoardDao;
import orderdetails.model.OrderdetailsDao;
import productinq.model.Productinq;
import productinq.model.ProductinqDAO;


@Controller
public class admin {

	final String command = "admin.ad";
	final String getPage = "admin";
	
	@Autowired
	OrderdetailsDao dao;
	
	@Autowired
	BoardDao boardDao;
	
	@RequestMapping(command)
	public String doAction(Model model) {
		//배송
		int cnt = dao.delivery();
		int cnt2 = dao.delivery2();
		int cnt3 = dao.delivery3();
		
		model.addAttribute("cnt",cnt);
		model.addAttribute("cnt2",cnt2);
		model.addAttribute("cnt3",cnt3);
		System.out.println("cnt:"+cnt);
		
		
		//상품문의
		List<BoardBean> boardlist = boardDao.getBoardList2();
		System.out.println("boardlist getSubject: "+ boardlist.get(0).getSubject());
		System.out.println("boardlist getNum: "+ boardlist.get(0).getNum());
		System.out.println("boardlist getRegdate: "+ boardlist.get(0).getRegdate());
		
		model.addAttribute("boardlist",boardlist);
		
		//주문내역
		
		return getPage;
	}
}
