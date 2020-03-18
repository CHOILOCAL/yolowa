package pack.model.review;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.review.ReviewBean;

@Repository
public class ReviewImpl implements ReviewInter {
	@Autowired
	private ReviewAnnoInter annoInter;
	
	public List<ReviewDto> selectList() throws DataAccessException {
		return annoInter.selectDataAll();
	}
	
	@Override
	public boolean writeData(ReviewBean bean) {
		return annoInter.insData(bean);
	}
	
	public List<ReviewDto> search(ReviewBean bean) throws DataAccessException {
	      return annoInter.Search(bean);
	   }
	
	public List<ReviewDto> selectMonthReview(){
	      SimpleDateFormat todaymonth = new SimpleDateFormat ("yyyy-MM");
	      Date time = new Date();
	      
	      System.out.println(todaymonth.format(time));
	      
	      List<ReviewDto> list = annoInter.selectMonthReview();
	      
	      //ReviewDto dto= null;
	      List<ReviewDto> list2 = new ArrayList<ReviewDto>();
	      
	      for(ReviewDto r: list) {
	         if(r.getMon().equals(todaymonth.format(time))) {
	            list2.add(r);
	         }
	      }
	      
	      return list2;
	   }
}
