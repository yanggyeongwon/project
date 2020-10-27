package productinq.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("MyProductinq")
public class ProductinqDAO {
	
	private String namespace = "productinq.model.Productinq";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void inqInsert(Productinq productinq) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert(namespace+".inqInsert",productinq);
		
	}

	public Productinq select(int pinum) {
		// TODO Auto-generated method stub
		Productinq productinqs = sqlSessionTemplate.selectOne(namespace+".select", pinum);
		return productinqs;
		
	}
}
