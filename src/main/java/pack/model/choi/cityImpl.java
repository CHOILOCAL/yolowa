package pack.model.choi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository
public class cityImpl implements cityInter{

	@Autowired
	private cityAnno cityanno;

	// SELECT city(no, loc1, loc2)
	@Override
	public List<cityDto> selectList() throws DataAccessException {
		return cityanno.selectList();
	}
}