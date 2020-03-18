package pack.model.planning;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CalImpl implements CalInter {
	@Autowired
	private CalAnnoInter calAnnoInter;
	
	public List<CalDto> selectPart(String id) {
		return calAnnoInter.selectPart(id);
	}
}
