package member.model;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("myMemberDao")
public class MemberDao {
	private final String namespace="member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertData(Member member){
		sqlSessionTemplate.insert(namespace+".InsertData",member);
	}
	public Member getData(int mnum){
		Member member = null;
		member = sqlSessionTemplate.selectOne(namespace+".GetData",mnum);
		return member;
	}

	public int updateData(Member member) {
		int cnt = sqlSessionTemplate.update(namespace + ".UpdateData",member);
		return cnt;
	}
	public void deleteData(int mnum) {
		sqlSessionTemplate.delete(namespace+".DeleteData",mnum);
	}
}

  





