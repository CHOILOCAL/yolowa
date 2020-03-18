package pack.model.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.model.login.MemberDto;

@Repository
public class DetailImpl implements DetailInter {
	@Autowired
	private DetailAnnoInter annoInter;
	
	@Override
	public List<MemberDto> selectReviewer(String review_id) throws DataAccessException {
		return annoInter.selectReviewer(review_id);
	}
	
	@Override
	public List<ReviewDto> selectReviews(String review_id) throws DataAccessException {
		return annoInter.selectReviews(review_id);
	}
	
	@Override
	public List<ReplyDto> selectReplyList(String review_id) throws DataAccessException {
		return annoInter.selectReplyList(review_id);
	}
	
	@Override
	public List<MemberDto> selectCommenter(String id) throws DataAccessException {
		return annoInter.selectCommenter(id);
	}
}
