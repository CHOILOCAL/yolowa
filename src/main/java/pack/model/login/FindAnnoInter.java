package pack.model.login;



import org.apache.ibatis.annotations.Select;

import pack.controller.login.MemberBean;


public interface FindAnnoInter {

	@Select("select id from member where name=#{name} and birth=#{birth}")
	public MemberDto findid(MemberBean bean);
	
	@Select("select pwd from member where name=#{name} and birth=#{birth} and id=#{id}")
	public MemberDto findpwd(MemberBean bean);
	

}
