package VOS.Tour;

public class TourDetailVo {
	private String contentid; // 콘텐츠ID
	private String contentTypeId; // 콘텐츠타입ID
	private String title; // 콘텐츠명(제목)ㅣ
	private String tel; // 전화번호
	private String homepage; // 홈페이지주소
	private String addr1; // 주소
	private String zipcode; // 우편번호
	private String overview; // 개요
	private String mapX;
	private String mapY;
	

	public TourDetailVo() {
// TODO Auto-generated constructor stub
	}


	public TourDetailVo(String contentid, String contentTypeId, String title, String tel, String homepage, String addr1,
			String zipcode, String overview, String mapX, String mapY) {
		super();
		this.contentid = contentid;
		this.contentTypeId = contentTypeId;
		this.title = title;
		this.tel = tel;
		this.homepage = homepage;
		this.addr1 = addr1;
		this.zipcode = zipcode;
		this.overview = overview;
		this.mapX = mapX;
		this.mapY = mapY;
	}


	public String getContentid() {
		return contentid;
	}


	public void setContentid(String contentid) {
		this.contentid = contentid;
	}


	public String getContentTypeId() {
		return contentTypeId;
	}


	public void setContentTypeId(String contentTypeId) {
		this.contentTypeId = contentTypeId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getHomepage() {
		return homepage;
	}


	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}


	public String getAddr1() {
		return addr1;
	}


	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}


	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	public String getOverview() {
		return overview;
	}


	public void setOverview(String overview) {
		this.overview = overview;
	}


	public String getMapX() {
		return mapX;
	}


	public void setMapX(String mapX) {
		this.mapX = mapX;
	}


	public String getMapY() {
		return mapY;
	}


	public void setMapY(String mapY) {
		this.mapY = mapY;
	}


	@Override
	public String toString() {
		return "TourDetailVo [contentid=" + contentid + ", contentTypeId=" + contentTypeId + ", title=" + title
				+ ", tel=" + tel + ", homepage=" + homepage + ", addr1=" + addr1 + ", zipcode=" + zipcode
				+ ", overview=" + overview + ", mapX=" + mapX + ", mapY=" + mapY + "]";
	}

	
	

}