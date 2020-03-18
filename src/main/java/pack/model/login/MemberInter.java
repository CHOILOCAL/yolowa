package pack.model.login;

import pack.controller.login.MemberBean;

public interface MemberInter {
	boolean signin(MemberBean bean);
	int checkin(String id) throws Exception;
}
