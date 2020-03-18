package pack.model.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.controller.review.ReviewBean;

@Controller
public class SearchController {
      @Autowired
      @Qualifier("reviewImpl")
      private ReviewInter reviewInter;
      
      @RequestMapping(value="search", method=RequestMethod.POST)
      public ModelAndView searchProcess(ReviewBean bean) {
         
         List<ReviewDto> list = reviewInter.search(bean);
         return new ModelAndView("list", "list", list);
         
         
      }
      
      
   }
