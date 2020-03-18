package pack.model.planning;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.planning.RouteBean;

@Repository
public class RouteImpl implements RouteInter {
	@Autowired
	private RouteAnnoInter routeAnnoInter;
	
	public boolean insertRoute(RouteBean bean) throws DataAccessException {
		if(routeAnnoInter.insertRoute(bean)>0) {
			return true;
		}else {
			return false;
		}
	}
	
	public List<RouteDto> selectRouteList(String id) throws DataAccessException {
		return routeAnnoInter.selectRouteList(id);
	}
	
	public String selectMinNum(String id) throws DataAccessException{
		return routeAnnoInter.selectMinNum(id);
	}
	
	@Override
	public boolean updateTrans(RouteBean bean) throws DataAccessException {
		if(routeAnnoInter.updateTrans(bean)>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@Override
	public boolean deleteRoute(RouteBean bean) throws DataAccessException {
		if(routeAnnoInter.deleteRoute(bean)>0) {
			return true;
		} else {
			return false;
		}
	}
}
