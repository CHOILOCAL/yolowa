package pack.model.planning;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface AreasInter {
	public List<AreasDto> selectAreas() throws DataAccessException;
	public List<String> selectAreasName() throws DataAccessException;
}
