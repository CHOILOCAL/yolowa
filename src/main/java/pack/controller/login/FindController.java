package pack.controller.login;

import java.io.Console;
import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.login.FindInter;
import pack.model.login.MemberDto;

@Controller
public class FindController {
	@Autowired
	@Qualifier("findImpl")
	private FindInter fidInter;

	@RequestMapping(value = "findid", method = RequestMethod.GET)
	public String login() {

		return "findid";
	}
	@RequestMapping(value = "findpwd", method = RequestMethod.GET)
	public String logins() {

		return "findpwd";
	}


	@RequestMapping(value = "findid", method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam("name")String name,@RequestParam("birth")String birth) {		
		MemberBean bean = new MemberBean();
		bean.setName(name);
		bean.setBirth(birth);
		System.out.println(name+"~~~~~~~~~~"+birth);
		MemberDto fList = fidInter.findidd(bean);
		System.out.println(fidInter.findidd(bean));
		String fname = fList.getId();
		
		return fname;

	}
	
	@RequestMapping(value = "findpwd", method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam("name")String name,@RequestParam("birth")String birth,@RequestParam("id")String id) {		
		MemberBean bean = new MemberBean();
		bean.setName(name);
		bean.setBirth(birth);
		bean.setId(id);
		MemberDto fList = fidInter.findpwdd(bean);
		String fpwd = fList.getPwd();
		
		return fpwd;

	}
	
	

}
