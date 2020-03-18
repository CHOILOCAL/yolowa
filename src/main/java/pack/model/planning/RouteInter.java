package pack.model.planning;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.planning.RouteBean;

public interface RouteInter {
	boolean insertRoute(RouteBean bean) throws DataAccessException;
	List<RouteDto> selectRouteList(String id) throws DataAccessException;
	String selectMinNum(String id) throws DataAccessException;
	boolean updateTrans(RouteBean bean) throws DataAccessException;
	boolean deleteRoute(RouteBean bean) throws DataAccessException;
}
