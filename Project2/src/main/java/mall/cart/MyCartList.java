package mall.cart;

import java.util.HashMap;
import java.util.Map;

public class MyCartList {
	
	// key:��ǰ��ȣ, value:�ֹ�����
	private Map<Integer,Integer> orderlists = null;
	
	public MyCartList() {
		orderlists = new HashMap<Integer,Integer>(); 
	}
	
	public void addOrder(int pnum, int oqty) {
		
		if(orderlists.containsKey(pnum) == false) { // ����ǰ�̸�
			
			orderlists.put(pnum,oqty);
			
		}else { // �̹� �ִ� ��ǰ�̸�
			//int oldoqty = orderlists.get(pnum);
			//orderlists.put(pnum,oldoqty+oqty);
			orderlists.put(pnum,orderlists.get(pnum) + oqty);
		}
		
	}//
	
	public Map<Integer,Integer> getAllOrderLists(){
		return orderlists;
	}
}




