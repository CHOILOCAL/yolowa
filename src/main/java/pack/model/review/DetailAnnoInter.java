package pack.model.review;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import pack.model.login.MemberDto;

public interface DetailAnnoInter {
	@Select("select * from member where id=#{id}")
	public List<MemberDto> selectReviewer(String review_id);
	
	@Select("select * from review where id = #{review_id}")
	public List<ReviewDto> selectReviews(String review_id);  // 해당 글을 작성한 사람의 아이디
	
	@Select("select re_no, review_id, re_contents, re_writer, reg_date, photo from reply inner join member on re_writer=id where review_id=#{review_id}")
	public List<ReplyDto> selectReplyList(String review_id); // 해당 글을 작성한 사람의 아이디
	
	//@Select("select * from member join reply on re_writer = '123'") //id : 세션값
	@Select("select * from member where id=#{id}")	//123 : 세션값
	public List<MemberDto> selectCommenter(String id);
}
