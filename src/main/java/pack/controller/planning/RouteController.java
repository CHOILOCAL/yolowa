package pack.controller.planning;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.planning.RouteDto;
import pack.model.planning.RouteInter;

@Controller
public class RouteController {
	@Autowired
	@Qualifier("routeImpl")
	private RouteInter routeInter;
	
	@RequestMapping(value = "makeroute", method = RequestMethod.GET)
	public ModelAndView goMakeRoute(HttpSession session) {
		if(session.getAttribute("member")==null) {
			return new ModelAndView("home");
		} else {
			return new ModelAndView("makeroute");
		}
	}
	
	@RequestMapping(value="insertRoute", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertRoute(RouteBean bean) {
		boolean b = routeInter.insertRoute(bean);
		
		if(b) {
			return routeList(bean.getId());
		} else {
			System.out.println("삽입실패ㅠㅠ");
			return null;
		}
	}
	
	@RequestMapping(value="showRoute", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> routeList(@RequestParam("id") String id) {
		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		Map<String, String> data= null;
		
		List<RouteDto> list = routeInter.selectRouteList(id);
		
		for(RouteDto r: list) {
			data=new HashMap<String, String>();
			data.put("num", r.getNum());
			data.put("loc", r.getLoc());
			data.put("r_date", r.getR_date());
			data.put("trans", r.getTrans());
			data.put("lat", r.getLat());
			data.put("lng", r.getLng());
			data.put("min_num", routeInter.selectMinNum(id));
			
			dataList.add(data);
		}
		
		Map<String, Object> routes = new HashMap<String , Object>();
		routes.put("datas", dataList);
		
		return routes;
	}
	
	@RequestMapping(value="updateTrans", method=RequestMethod.POST)
	@ResponseBody
	//public Map<String, Object> updateTrans(@RequestParam("num") String num, @RequestParam("trans") String trans) {
	public Map<String, Object> updateTrans(RouteBean bean) {
		boolean b = routeInter.updateTrans(bean);
		
		if(b) {
			return routeList(bean.getId());
		} else {
			System.out.println("수정실패ㅠㅠ");
			return null;
		}
	}
	
	@RequestMapping(value="deleteRoute", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteRoute(RouteBean bean) {
		boolean b = routeInter.deleteRoute(bean);
		
		if(b) {
			return routeList(bean.getId());
		} else {
			System.out.println("삭제실패ㅠㅠ");
			return null;
		}
	}
}
