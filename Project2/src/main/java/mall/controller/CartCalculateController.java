package mall.controller;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.cart.MyCartList;
import member.model.Member;
import member.model.MemberDao;
import order.model.OrderDao;
import orderdetail.model.OrderDetail;
import orderdetail.model.OrderDetailDao;
import product.model.ProductDao;

@Controller
public class CartCalculateController { // MallList.jsp에서 결재하기 클릭했을 때

	final String command = "calculate.mall";
	final String gotoPage = "redirect:/list.prd"; 
	
	@Autowired
	MemberDao memberDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	OrderDao orderDao;
	
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@RequestMapping(value=command) 
	public String doAction(HttpSession session) {
		
		MyCartList mycart = (MyCartList)session.getAttribute("mycart");
		Map<Integer,Integer> maplists = mycart.getAllOrderLists();
		//키:상품번호, 값:주문수량
		
		
		Set<Integer> keylist = maplists.keySet();
		System.out.println("keylist : " + keylist); // [2,7,15]
		
		//orders 테이블 : oid,mid,orderdate
		Member member = (Member)session.getAttribute("loginInfo");
		orderDao.insertData(member.getId());
		
		int maxOid = orderDao.getMaxOid();
		
		for(Integer pnum : keylist) {
			Integer qty = maplists.get(pnum);
			
			productDao.updateStock(pnum,qty);
			
//			orderdetails:odid,oid,pnum,qty
//			-- oid : 주문번호,  pnum : 상품 번호,  qty : 주문 수량
			
			OrderDetail odBean = new OrderDetail();
			odBean.setOid(maxOid);
			odBean.setPnum(pnum);
			odBean.setQty(qty);
			
			
			orderDetailDao.insertData(odBean);
		}
		
		memberDao.updatePoint(member.getId(),100);
		
		session.removeAttribute("mycart");
		return gotoPage;
	}
}








