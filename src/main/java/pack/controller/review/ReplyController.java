package pack.controller.review;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.review.ReplyDto;
import pack.model.review.ReplyInter;
import pack.model.review.ReviewInter;

@Controller
public class ReplyController {
	@Autowired
	@Qualifier("replyImpl")
	private ReplyInter replyInter;
	
	@Autowired
	@Qualifier("reviewImpl")
	private ReviewInter reviewInter;
	
	@RequestMapping(value="reply", produces="application/json", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertReply(HttpSession session,ReplyBean bean) {
		boolean b = replyInter.insertReply(bean);
		
		if(b) {
			return SelectReplyList(bean.getReview_id());	//로그인 되어있는 사람의 id
		} else {
			return null;
		}
	}
	
	public Map<String, Object> SelectReplyList(String review_id) {
		List<Map<String,String>> dataList = new ArrayList<Map<String,String>>();
		Map<String, String> data = null;
		
		List<ReplyDto> list = replyInter.list(review_id);
		System.out.println("아작스스스ㅡ스스스ㅡ"+list.get(0).getRe_writer());
		
		for(ReplyDto r:list) {
			data = new HashMap<String, String>();
			data.put("review_id", r.getReview_id());
			data.put("re_contents", r.getRe_contents());
			//data.put("re_photo", r.getPhoto());
			data.put("re_writer", r.getRe_writer());
			data.put("reg_date", r.getReg_date());
			
			System.out.println(r.getRe_contents());
			dataList.add(data);
		}
		
		Map<String, Object> reply = new HashMap<String, Object>();
		reply.put("datalist", dataList);
		System.out.println(dataList);
		return reply;
		
	}
	
	@RequestMapping(value="home")
	public ModelAndView selectMax_Reply() {
		ModelAndView model = new ModelAndView("home");
	    model.addObject("max_reply", replyInter.selectMax_Reply());
	    model.addObject("monthReviews", reviewInter.selectMonthReview());
	      
	    return model;
	}
}
