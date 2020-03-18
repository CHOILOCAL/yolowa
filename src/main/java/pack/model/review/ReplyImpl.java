package pack.model.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.review.ReplyBean;

@Repository
public class ReplyImpl implements ReplyInter {
	@Autowired
	private ReplyAnnoInter annoInter;

	@Override
	public List<ReplyDto> list(String review_id) throws DataAccessException {
		return annoInter.list(review_id);
	}
	
	@Override
	public boolean insertReply(ReplyBean bean) throws DataAccessException {
		if(annoInter.insertReply(bean) > 0) return true;
		else return false;
	}
	
	@Override
	public boolean update(ReplyDto replyDto) throws DataAccessException {
		try {
			annoInter.update(replyDto);
			return true;
		} catch (Exception e) {
			System.out.println("update err : " + e);
			return false;
		}
	}
	
	@Override
	public List<Wang> selectMax_Reply() throws DataAccessException {
		return annoInter.selectMax_Reply();
	}
}
