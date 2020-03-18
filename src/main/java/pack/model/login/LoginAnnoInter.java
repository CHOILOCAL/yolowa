package pack.model.login;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

import pack.controller.login.MemberBean;

public interface LoginAnnoInter {
	@Select("select id,pwd,isAdmin from member where id=#{id} and pwd=#{pwd}")
	public List<MemberDto> slogin(MemberBean bean) throws DataAccessException;
}
