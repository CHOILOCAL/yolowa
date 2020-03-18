package pack.controller.choi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.choi.cityInter;

@Controller
public class cityController{
	
	@Autowired
	@Qualifier("cityImpl")
	private cityInter cityInter;
	
	// SELECT city(no, loc1, loc2)
	@RequestMapping("main_city")
	public ModelAndView process() {
		System.out.println("main_city리스트보기");
		return new ModelAndView("main_city","main_city",cityInter.selectList());
	}
}