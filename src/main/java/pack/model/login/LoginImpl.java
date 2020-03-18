package pack.model.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.login.MemberBean;

@Repository
public class LoginImpl implements LoginInter {
	@Autowired
	private LoginAnnoInter loginAnnoInter;
	
	@Override
	public List<MemberDto> selectlogin (MemberBean bean) throws DataAccessException {
		return loginAnnoInter.slogin(bean);
	}
}
