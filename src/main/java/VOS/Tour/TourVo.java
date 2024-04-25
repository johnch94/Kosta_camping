package VOS.Tour;

public class TourVo {
	private String addr1;
	private String addr2;
	private String cat1;
	private String cat2;
	private String contentId;
	private String contenttypeId;
	private String firstimage;
	private String firstimage2;
	private String mapX;
	private String mapY;
	private String title;
	private String tel;

	
	public TourVo() {}


	public TourVo(String addr1, String addr2, String cat1, String cat2, String contentId, String contenttypeId,
			String firstimage, String firstimage2, String mapX, String mapY, String title, String tel) {
		super();
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.cat1 = cat1;
		this.cat2 = cat2;
		this.contentId = contentId;
		this.contenttypeId = contenttypeId;
		this.firstimage = firstimage;
		this.firstimage2 = firstimage2;
		this.mapX = mapX;
		this.mapY = mapY;
		this.title = title;
		this.tel = tel;
	}


	public String getAddr1() {
		return addr1;
	}


	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}


	public String getAddr2() {
		return addr2;
	}


	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}


	public String getCat1() {
		return cat1;
	}


	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}


	public String getCat2() {
		return cat2;
	}


	public void setCat2(String cat2) {
		this.cat2 = cat2;
	}


	public String getContentId() {
		return contentId;
	}


	public void setContentId(String contentId) {
		this.contentId = contentId;
	}


	public String getContenttypeId() {
		return contenttypeId;
	}


	public void setContenttypeId(String contenttypeId) {
		this.contenttypeId = contenttypeId;
	}


	public String getFirstimage() {
		return firstimage;
	}


	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}


	public String getFirstimage2() {
		return firstimage2;
	}


	public void setFirstimage2(String firstimage2) {
		this.firstimage2 = firstimage2;
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


	@Override
	public String toString() {
		return "TourVo [addr1=" + addr1 + ", addr2=" + addr2 + ", cat1=" + cat1 + ", cat2=" + cat2 + ", contentId="
				+ contentId + ", contenttypeId=" + contenttypeId + ", firstimage=" + firstimage + ", firstimage2="
				+ firstimage2 + ", mapX=" + mapX + ", mapY=" + mapY + ", title=" + title + ", tel=" + tel + "]";
	}

	


}
