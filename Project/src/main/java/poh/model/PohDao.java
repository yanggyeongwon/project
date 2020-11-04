package poh.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("MyPoh")
public class PohDao {

	private String namespace = "poh.model.Poh";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	
}
