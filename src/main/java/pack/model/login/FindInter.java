package pack.model.login;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.login.MemberBean;

public interface FindInter {
	MemberDto findidd(MemberBean bean) throws DataAccessException;
	MemberDto findpwdd(MemberBean bean) throws DataAccessException;
}
