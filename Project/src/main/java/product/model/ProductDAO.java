package product.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("MyProduct")
public class ProductDAO {
	
	private String namespace = "product.model.Product";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void GetInsertProduct(Product product) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert(namespace+".GetInsertProduct", product);
		
	}

	public int getTotalCount(Map<String, String> map) {
		int cnt = sqlSessionTemplate.selectOne(namespace + ".getTotalCount",map);
		return cnt;
	}

	public List<Product> getSelectProduct(Paging paging,Map<String, String> map) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectProduct",map,rowBounds);
		return lists;
	}



}
