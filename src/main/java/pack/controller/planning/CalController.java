package pack.controller.planning;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.planning.CalDto;
import pack.model.planning.CalInter;

@Controller
public class CalController {
	@Autowired
	@Qualifier("calImpl")
	private CalInter calInter;
	
	@RequestMapping(value = "cal", method = RequestMethod.GET)
	public ModelAndView up(HttpSession session) {
		String id=(String)session.getAttribute("member");
		System.out.println(id);
		List<CalDto> dto = calInter.selectPart(id);
		ModelAndView view = new ModelAndView();
		String s="";
		for(int i=0;i<dto.size();i++) {
			s+="{ title:'"+ dto.get(i).getTitle() +"', start:'"+  dto.get(i).getStart()+"', end:'"+ dto.get(i).getEnd() +"'},";
		}
		System.out.println(s);
		view.addObject("list",s);
		view.setViewName("cal");
		
		return view;
	}
}
