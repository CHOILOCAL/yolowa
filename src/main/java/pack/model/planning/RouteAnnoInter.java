package pack.model.planning;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.planning.RouteBean;

public interface RouteAnnoInter {
	@Insert("insert into route(loc, r_date, trans, id, lat, lng) values(#{loc}, #{r_date}, #{trans}, #{id}, #{lat}, #{lng});")
	int insertRoute(RouteBean bean);
	
	@Select("select num, loc, r_date, trans, lat, lng from route where id=#{id} order by r_date, num")
	List<RouteDto> selectRouteList(String id);
	
	@Select("select num as min_num from route where id=#{id} order by r_date, num LIMIT 1")
	String selectMinNum(String id);
	
	@Update("update route set trans=#{trans} where num=#{num}")
	int updateTrans(RouteBean bean);
	
	@Delete("delete from route where num=#{num}")
	int deleteRoute(RouteBean bean);
}
