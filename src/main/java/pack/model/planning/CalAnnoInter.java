package pack.model.planning;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface CalAnnoInter {
	@Select("select min(r_date) as start, max(r_date) as end, substring_index(loc,' ',2) as title" + 
			" from route where id=#{id} group by title")
	public List<CalDto> selectPart(String id);
}
