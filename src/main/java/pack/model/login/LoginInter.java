package pack.model.login;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.login.MemberBean;

public interface LoginInter {
	List<MemberDto> selectlogin(MemberBean bean) throws DataAccessException;
}
