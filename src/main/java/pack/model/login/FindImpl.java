package pack.model.login;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.login.MemberBean;


@Repository
public class FindImpl implements FindInter {
	
	@Autowired
	private FindAnnoInter FindAnno;
	
	public MemberDto findidd(MemberBean bean) throws DataAccessException {		
					
	return FindAnno.findid(bean);
			
	}
	
	public MemberDto findpwdd(MemberBean bean) throws DataAccessException {		
		
		return FindAnno.findpwd(bean);


	}
}