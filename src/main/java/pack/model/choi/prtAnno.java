package pack.model.choi;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.choi.prtBean;

public interface prtAnno {
	
	// SELECT where loc1='@@@' ex) 서울 클릭시 서울 콘텐츠 가져오기
	@Select("select * from place where loc1=#{loc1}")
	public List<prtDto> selectList1(prtBean bean); 
	
	// SELECT where name='@@@' ex) '서울'콘텐츠 클릭시 콘텐츠 세부사항 가져오기
	@Select("select * from place where name=#{name}")
	public List<prtDto> selectList2(prtBean bean);
	
	// SELECT Update할  Data부르기  ex) unique한 이름 값 들고가서 수정할 값 가져오기
	// where name='@@@'	
	@Select("select * from place where name=#{name}")
	public List<prtDto> selectList3(prtBean bean);
	
	@Select("select max(no) as no from place order by no desc")
	public List<prtDto> selectList4(prtBean bean);
	
	// INSERT 콘텐츠 등록 (name, loc1, loc2, subject, contents, images, etc)
	@Insert("insert into place(no, name, loc1, loc2, subject, contents, images, etc) values(#{no}, #{name}, #{loc1}, #{loc2}, #{subject}, #{contents}, #{images}, #{etc})")
	public boolean insertData(prtBean bean);
	
	// UPDATE 콘텐츠 수정 no(name, loc1, loc2, subject, contents, images, etc)
	@Update("update place set name=#{name}, loc1=#{loc1}, loc2=#{loc2}, subject=#{subject}, contents=#{contents}, images=#{images}, etc=#{etc} where no=#{no}")
	public boolean updateData(prtBean bean);
	
	// DELETE 콘텐츠 삭제 name
	@Delete("delete from place where name=#{name}")
	public boolean deleteData(prtBean bean); 
}