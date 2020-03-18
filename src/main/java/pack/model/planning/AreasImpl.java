package pack.model.planning;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository
public class AreasImpl implements AreasInter {
	@Autowired
	private AreasAnnoInter inter;
	
	@Override
	public List<AreasDto> selectAreas() throws DataAccessException {
		return inter.selectAreas();
	}
	
	@Override
	public List<String> selectAreasName() throws DataAccessException {
		return inter.selectAreasName();
	}
}
