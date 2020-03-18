package pack.model.review;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.review.ReviewBean;

public interface ReviewInter {
	List<ReviewDto> selectList() throws DataAccessException;
	
	boolean writeData(ReviewBean bean);
	List<ReviewDto> search(ReviewBean bean) throws DataAccessException;
	public List<ReviewDto> selectMonthReview();
}
