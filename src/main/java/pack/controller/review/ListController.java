package pack.controller.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pack.model.review.ReviewInter;

@Controller
public class ListController {
	@Autowired
	@Qualifier("reviewImpl")
	private ReviewInter reviewInter;
	
	@RequestMapping("list")
	public Model process(Model model) {
		model.addAttribute("list", reviewInter.selectList());	//reviewInter.selectList() : select * from review 
		return model;
	}
}
