package pack.controller.login;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pack.model.login.LoginInter;
import pack.model.login.MemberDto;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("loginImpl")
	private LoginInter loginInter;
	


	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(HttpSession session) {

		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> login(HttpSession session, @RequestParam("id") String id,
			@RequestParam("pass") String pwd) {
		MemberBean bean = new MemberBean();
		bean.setId(id);
		bean.setPwd(pwd);
		HashMap<String, Object> data = new HashMap<String, Object>();
		List<MemberDto> loginList = loginInter.selectlogin(bean);
		int log = loginList.size();				
		if (log != 0) {
			if(loginList.get(0).getIsAdmin() == 0) {
				session.setAttribute("member",loginList.get(0).getId());
			}else {
				session.setAttribute("admin",loginList.get(0).getId());
			}
			
			data.put("check", log);
			

		} else {
			data.put("check", log);
		}
		return data;

	}
}
