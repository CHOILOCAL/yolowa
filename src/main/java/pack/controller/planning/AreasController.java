package pack.controller.planning;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pack.model.planning.AreasDto;
import pack.model.planning.AreasInter;

@Controller
public class AreasController {
	@Autowired
	@Qualifier("areasImpl")
	private AreasInter inter;
	
	@RequestMapping(value="showAreas", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> showAreas() {
		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		List<Map<String, String>> namesList = new ArrayList<Map<String,String>>();
		Map<String, String> data= null;
		Map<String, String> names= null;
		
		List<AreasDto> list = inter.selectAreas();
		List<String> namelist = inter.selectAreasName();
		
		for(AreasDto a: list) {
			data=new HashMap<String, String>();
			data.put("name", a.getName());
			data.put("lat", a.getLat());
			data.put("lng", a.getLng());
			
			dataList.add(data);
		}
		
		for(String a: namelist) {
			names=new HashMap<String, String>();
			names.put("name_city", a);
			
			namesList.add(names);
		}
		
		Map<String, Object> areas = new HashMap<String , Object>();
		areas.put("datas", dataList);
		areas.put("names", namesList);
		
		System.out.println("여기는 areas"+areas);
		
		return areas;
	}
}
