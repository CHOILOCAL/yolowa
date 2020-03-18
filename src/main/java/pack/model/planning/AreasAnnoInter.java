package pack.model.planning;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface AreasAnnoInter {
	@Select("select name, lat, lng from areas")
	public List<AreasDto> selectAreas();
	
	@Select("select distinct name from areas")
	public List<String> selectAreasName();
}
