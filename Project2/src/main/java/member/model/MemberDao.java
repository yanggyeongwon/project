package member.model;


import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("myMemberDao")
public class MemberDao {
	private final String namespace="member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	SqlSession sqlsession;

	
	public void insertData(Member member){
		sqlSessionTemplate.insert(namespace+".InsertData",member);
	}
	public Member getData(String mid){
		Member member = null;
		member = sqlSessionTemplate.selectOne(namespace+".GetData",mid);
		return member;
	}
	
	
	public int updateData(Member member){
		int cnt = sqlSessionTemplate.update(namespace + ".UpdateData",member);
		return cnt;
	}

	 
	//È¸¿øÅ»Åð
	 public void deleteData(int mnum) {
		 sqlSessionTemplate.delete(namespace+".DeleteData",mnum);
	 }
}

  





