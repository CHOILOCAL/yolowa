package pack.model.review;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.review.ReplyBean;

public interface ReplyInter {
	List<ReplyDto> list(String review_id) throws DataAccessException;
	
	boolean insertReply(ReplyBean bean) throws DataAccessException;

	
	boolean update(ReplyDto replyDto) throws DataAccessException;
	public List<Wang> selectMax_Reply() throws DataAccessException;
}
