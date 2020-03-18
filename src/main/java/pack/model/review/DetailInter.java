package pack.model.review;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.model.login.MemberDto;

public interface DetailInter {
	List<MemberDto> selectReviewer(String review_id) throws DataAccessException;
	List<ReviewDto> selectReviews(String review_id) throws DataAccessException;
	List<ReplyDto> selectReplyList(String review_id) throws DataAccessException;
	List<MemberDto> selectCommenter(String id) throws DataAccessException;
}
