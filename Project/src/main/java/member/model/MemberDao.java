package member.model;

<<<<<<< HEAD

=======
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
>>>>>>> yyanggang
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


<<<<<<< HEAD
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

  





=======
import utility.Paging;

@Component("MyMember")
public class MemberDao {
	
	private String namespace = "member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int getTotalCount(Map<String, String> map) {
		int cnt = sqlSessionTemplate.selectOne(namespace + ".getTotalCount",map);
		return cnt;
	}

	public List<Member> getSelectMember(Paging paging, Map<String, String> map) {
		List<Member> lists = new ArrayList<Member>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit());
		lists = sqlSessionTemplate.selectList(namespace + ".getSelectMember",map,rowBounds);
		return lists;
	}

	public void deleteMember(int mnum) {
		sqlSessionTemplate.delete(namespace + ".deleteMember" , mnum);
		
	}

	public Member getData(int mnum) {
		Member member = null;
		member = sqlSessionTemplate.selectOne(namespace + ".getMember" , mnum);
		return member;
	}

	
	
}
>>>>>>> yyanggang
