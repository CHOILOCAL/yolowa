package pack.model.review;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import pack.controller.review.ReviewBean;

public interface ReviewAnnoInter {
	@Select("select * from review order by review_no desc")
	public List<ReviewDto> selectDataAll();
	
	@Insert("insert into review(id, date, loc1, loc2, subject, contents, images) values(#{id} ,now(), #{loc1}, #{loc2}, #{subject}, #{contents}, #{images})")
	public boolean insData(ReviewBean bean);	//리뷰 작성시 review 테이블에 insert

	@Select("select * from review where subject like concat('%',#{search},'%')")
	   public List<ReviewDto> Search(ReviewBean bean);
	
	@Select("select id, date, review_no, subject, images, substr(date,1,7) as mon from review order by review_no desc")
	   public List<ReviewDto> selectMonthReview();
}
