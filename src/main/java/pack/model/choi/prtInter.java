package pack.model.choi;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.choi.prtBean;

public interface prtInter {
	
	// SELECT where loc1='@@@' ex) 서울 클릭시 서울 콘텐츠 가져오기
	List<prtDto> selectList1(prtBean bean) throws DataAccessException; 

	// SELECT where name='@@@' ex) '서울'콘텐츠 클릭시 콘텐츠 세부사항 가져오기
	List<prtDto> selectList2(prtBean bean) throws DataAccessException;

	// SELECT Update할  Data부르기  ex) unique한 이름 값 들고가서 수정할 값 가져오기
	// where name='@@@'
	List<prtDto> selectList3(prtBean bean) throws DataAccessException;
	
	// SELECT 다음 no 값 불러오기 ex) 기존 no=2이면, 불러올 no값 3
	List<prtDto> selectList4(prtBean bean) throws DataAccessException;

	// INSERT 콘텐츠 등록 (name, loc1, loc2, subject, contents, images, etc)
	boolean insertData(prtBean bean);
	
	// UPDATE 콘텐츠 수정 no(name, loc1, loc2, subject, contents, images, etc)
	boolean updateData(prtBean bean);
	
	// DELETE 콘텐츠 삭제 name
	boolean deleteData(prtBean bean);
}