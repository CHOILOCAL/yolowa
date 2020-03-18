package pack.model.review;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.review.ReplyBean;

public interface ReplyAnnoInter {
	@Select("select * from reply where review_id = #{review_id}")
	public List<ReplyDto> list(String review_id);

	@Insert("insert into reply(review_id,re_contents,re_writer,reg_date) values(#{review_id}, #{re_contents}, #{re_writer}, now())")
	public int insertReply(ReplyBean bean);
	
	@Update("update reply set re_text=#{re_text} where re_no = #{re_no}")
	public void update(ReplyDto replyDto);
	
	@Select("select member.id as id, birth, photo, gender, subject, `date`, images  from member inner join review on member.id=review.id" + 
			" where member.id=(select review_id from reply group by review_id having count(*) = (select max(cnt) from (select count(*) as cnt from reply group by review_id) r))")
	public List<Wang> selectMax_Reply();
}
