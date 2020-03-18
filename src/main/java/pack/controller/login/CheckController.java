package pack.controller.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pack.model.login.MemberInter;

@Controller
public class CheckController {
	@Autowired
	private MemberInter inter;
	
	@RequestMapping(value="signin",method=RequestMethod.GET)
	public String input()
	{
		return "signin";
	}
	
	@RequestMapping(value="/checkin",method=RequestMethod.POST)
	@ResponseBody
	public String process(@ModelAttribute("bean") MemberBean bean, Model model) throws Exception{
		int md = inter.checkin(bean.getId());
		return String.valueOf(md);
	}
}
