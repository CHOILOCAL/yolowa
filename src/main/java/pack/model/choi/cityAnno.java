package pack.model.choi;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import pack.model.choi.cityDto;

public interface cityAnno {
	
	// SELECT city(no, loc1, loc2)
	@Select("select distinct loc1 from city")
	public List<cityDto> selectList();
	
}