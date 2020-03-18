package pack.controller.review;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.review.DetailInter;

@Controller
public class DetailController {
	@Autowired
	@Qualifier("detailImpl")
	private DetailInter detailInter;
	
	@RequestMapping("review")
	public ModelAndView process(HttpSession session, String review_id) {
		ModelAndView view = new ModelAndView();
		view.setViewName("review");
		view.addObject("reviewer",detailInter.selectReviewer(review_id));
		view.addObject("reviews",detailInter.selectReviews(review_id));
		view.addObject("replyList",detailInter.selectReplyList(review_id));
		view.addObject("commenter",detailInter.selectCommenter((String)session.getAttribute("member")));
		//view.addObject("commenter",detailInter.selectCommenter("aa"));
		
		return view;
	}
}
