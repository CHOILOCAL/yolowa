package pack.controller.planning;

public class RouteBean {
private String num, loc, r_date, trans, id, lat, lng, marker_num;
	
	private String min_num;
	
	public String getMarker_num() {
		return marker_num;
	}

	public void setMarker_num(String marker_num) {
		this.marker_num = marker_num;
	}
	
	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getMin_num() {
		return min_num;
	}

	public void setMin_num(String min_num) {
		this.min_num = min_num;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getTrans() {
		return trans;
	}

	public void setTrans(String trans) {
		this.trans = trans;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
