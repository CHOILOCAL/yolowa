package pack.connection.choi;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 처음 Run as 이외에 index(메인 페이지).jsp 불러오기
public class c_index {
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String c_insert() {	
		return "index";
	}
}