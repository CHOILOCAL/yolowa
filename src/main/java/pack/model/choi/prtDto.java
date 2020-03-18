package pack.model.choi;

//city.jsp, city_detail.jsp용 [세부 컨텐츠(명소, 맛집, 투어) by 관리자]
public class prtDto {
	
	private String no;
	private String name;
	private String loc1;
	private String loc2;
	private String subject;
	private String contents;
	private String images;
	private String etc;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLoc1() {
		return loc1;
	}
	public void setLoc1(String loc1) {
		this.loc1 = loc1;
	}
	public String getLoc2() {
		return loc2;
	}
	public void setLoc2(String loc2) {
		this.loc2 = loc2;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	
}