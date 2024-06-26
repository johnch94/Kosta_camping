package VOS.WeatherVo;

public class CamLocation {
	private String mapX; //경도
	private String mapY; //위도
	
	private String contentId;
	private String facltNm;
	private String lineIntro;
	private String intro;
	private String induty;
	
	private String manageSttus;
	private String hvofBgnde;
	private String hvofEnddle;
	private String featureNm;
	private String lctCl;
	
	private String doNm;
	private String sigunguNm;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String tel;
	private String homepage;
	
	public CamLocation() {}

	public CamLocation(String mapX, String mapY, String contentId, String facltNm, String lineIntro, String intro,
			String induty, String manageSttus, String hvofBgnde, String hvofEnddle, String featureNm, String lctCl,
			String doNm, String sigunguNm, String zipcode, String addr1, String addr2, String tel, String homepage) {
		super();
		this.mapX = mapX;
		this.mapY = mapY;
		this.contentId = contentId;
		this.facltNm = facltNm;
		this.lineIntro = lineIntro;
		this.intro = intro;
		this.induty = induty;
		this.manageSttus = manageSttus;
		this.hvofBgnde = hvofBgnde;
		this.hvofEnddle = hvofEnddle;
		this.featureNm = featureNm;
		this.lctCl = lctCl;
		this.doNm = doNm;
		this.sigunguNm = sigunguNm;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.tel = tel;
		this.homepage = homepage;
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

	public String getContentId() {
		return contentId;
	}

	public void setContentId(String contentId) {
		this.contentId = contentId;
	}

	public String getFacltNm() {
		return facltNm;
	}

	public void setFacltNm(String facltNm) {
		this.facltNm = facltNm;
	}

	public String getLineIntro() {
		return lineIntro;
	}

	public void setLineIntro(String lineIntro) {
		this.lineIntro = lineIntro;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getInduty() {
		return induty;
	}

	public void setInduty(String induty) {
		this.induty = induty;
	}

	public String getManageSttus() {
		return manageSttus;
	}

	public void setManageSttus(String manageSttus) {
		this.manageSttus = manageSttus;
	}

	public String getHvofBgnde() {
		return hvofBgnde;
	}

	public void setHvofBgnde(String hvofBgnde) {
		this.hvofBgnde = hvofBgnde;
	}

	public String getHvofEnddle() {
		return hvofEnddle;
	}

	public void setHvofEnddle(String hvofEnddle) {
		this.hvofEnddle = hvofEnddle;
	}

	public String getFeatureNm() {
		return featureNm;
	}

	public void setFeatureNm(String featureNm) {
		this.featureNm = featureNm;
	}

	public String getLctCl() {
		return lctCl;
	}

	public void setLctCl(String lctCl) {
		this.lctCl = lctCl;
	}

	public String getDoNm() {
		return doNm;
	}

	public void setDoNm(String doNm) {
		this.doNm = doNm;
	}

	public String getSigunguNm() {
		return sigunguNm;
	}

	public void setSigunguNm(String sigunguNm) {
		this.sigunguNm = sigunguNm;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
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

	@Override
	public String toString() {
		return "CamLocation [mapX=" + mapX + ", mapY=" + mapY + ", contentId=" + contentId + ", facltNm=" + facltNm
				+ ", lineIntro=" + lineIntro + ", intro=" + intro + ", induty=" + induty + ", manageSttus="
				+ manageSttus + ", hvofBgnde=" + hvofBgnde + ", hvofEnddle=" + hvofEnddle + ", featureNm=" + featureNm
				+ ", lctCl=" + lctCl + ", doNm=" + doNm + ", sigunguNm=" + sigunguNm + ", zipcode=" + zipcode
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", tel=" + tel + ", homepage=" + homepage + "]";
	}

	
	
}
