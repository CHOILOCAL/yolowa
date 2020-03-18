package pack.model.login;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import pack.controller.login.MemberBean;

public interface MemberAnnoInter {
	@Insert("insert into member(id,pwd,pwd_ch,birth,gender,name,phone,address,photo) values(#{id},#{pwd},#{pwd_ch},#{birth},#{gender},#{name},#{phone},#{address},#{photo})")
	public int signin(MemberBean bean);
	
	@Select("select count(*) from member where id=#{id}")
	public int checkin(String id);
}
