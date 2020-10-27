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
	public Product getData(int pnum) {
		// TODO Auto-generated method stub
		Product product = sqlSessionTemplate.selectOne(namespace+".getData", pnum);
		return product;
	}
	public void deleteProduct(int pnum) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.delete(namespace+".deleteProduct", pnum);
	}
	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.update(namespace+".updateProduct", product);
	}
	public List<Product> getSelectBest(Paging paging, Map<String, String> map) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectBest",map,rowBounds);
		return lists;
	}
	public List<Product> getSelectTop(Paging paging, Map<String, String> map) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectTop",map,rowBounds);
		return lists;
	}
	public List<Product> getSelectPants(Paging paging, Map<String, String> map) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectPants",map,rowBounds);
		return lists;
	}
	public List<Product> getSelectOuter(Paging paging, Map<String, String> map) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectOuter",map,rowBounds);
		return lists;
	}
	public List<Product> getSelectShoes(Paging paging, Map<String, String> map) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectShoes",map,rowBounds);
		return lists;
	}
	public List<Product> getSelectAcc(Paging paging, Map<String, String> map) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectAcc",map,rowBounds);
		return lists;
	}
}