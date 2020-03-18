package pack.model.choi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.choi.prtBean;

@Repository
public class prtImpl implements prtInter{
	
	@Autowired
	private prtAnno annoInter;

	// SELECT where loc1='@@@' ex) 서울 클릭시 서울 콘텐츠 가져오기
	@Override
	public List<prtDto> selectList1(prtBean bean) throws DataAccessException {
		return annoInter.selectList1(bean);
	}
	
	// SELECT where name='@@@' ex) '서울'콘텐츠 클릭시 콘텐츠 세부사항 가져오기
	@Override
	public List<prtDto> selectList2(prtBean bean) throws DataAccessException {
		return annoInter.selectList2(bean);
	}
	
	// SELECT Update할  Data부르기  ex) unique한 이름 값 들고가서 수정할 값 가져오기
	// where name='@@@'	
	@Override
	public List<prtDto> selectList3(prtBean bean) throws DataAccessException {
		return annoInter.selectList3(bean); 
	}
	
	// SELECT 다음 no 값 불러오기 ex) 기존 no=2이면, 불러올 no값 3 
	@Override
	public List<prtDto> selectList4(prtBean bean) throws DataAccessException {
		return annoInter.selectList4(bean);
	}
	
	// INSERT 콘텐츠 등록 (name, loc1, loc2, subject, contents, images, etc)
	@Override
	public boolean insertData(prtBean bean) {
		return annoInter.insertData(bean); // @'
	}
	
	// UPDATE 콘텐츠 수정 no(name, loc1, loc2, subject, contents, images, etc)
	@Override
	public boolean updateData(prtBean bean) {
		return annoInter.updateData(bean);
	}
	
	// DELETE 콘텐츠 삭제 name
	@Override
	public boolean deleteData(prtBean bean) {
		return annoInter.deleteData(bean);
	}
}