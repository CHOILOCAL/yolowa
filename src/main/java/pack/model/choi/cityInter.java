package pack.model.choi;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface cityInter {
	
	// SELECT city(no, loc1, loc2)
	List<cityDto> selectList() throws DataAccessException;
	
}