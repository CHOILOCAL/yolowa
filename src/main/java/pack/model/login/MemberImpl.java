package pack.model.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.login.MemberBean;

@Repository
public class MemberImpl implements MemberInter {
	@Autowired
	MemberAnnoInter inter;
	
	public boolean signin(MemberBean bean) {
		int c = inter.signin(bean);
		if(c>0) {
			return true;
		}else {
			return false;
		}
	}
	
	public int checkin(String id) throws Exception {
		int ch = inter.checkin(id);
		return ch;
	}
}
