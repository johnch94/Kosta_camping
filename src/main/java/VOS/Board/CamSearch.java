package VOS.Board;

public class CamSearch {
	private String contentId;		// 컨텐트 ID
	private String facltNm;			// 야영장명
	private String lineIntro;		// 한줄 소개
	private String intro;			// 소개
	private String featureNm;		// 특징
	private String addr1;			// 주소
	private String addr2;			// 상세주소
	private String sbrsCl;			// 부대시설 ex) 전기, 무선인터넷 등
	private String firstImageUrl;	// 대표이미지
	
	
	public CamSearch() {
		
	}

	public CamSearch(String contentId, String facltNm, String lineIntro, String intro, String featureNm, String addr1, String addr2, String sbrsCl,
			String firstImageUrl) {
		super();
		this.contentId = contentId;
		this.facltNm = facltNm;
		this.lineIntro = lineIntro;
		this.intro = intro;
		this.featureNm = featureNm;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.sbrsCl = sbrsCl;
		this.firstImageUrl = firstImageUrl;
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

	public String getFeatureNm() {
		return featureNm;
	}

	public void setFeatureNm(String featureNm) {
		this.featureNm = featureNm;
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

	public String getSbrsCl() {
		return sbrsCl;
	}

	public void setSbrsCl(String sbrsCl) {
		this.sbrsCl = sbrsCl;
	}

	public String getFirstImageUrl() {
		return firstImageUrl;
	}

	public void setFirstImageUrl(String firstImageUrl) {
		this.firstImageUrl = firstImageUrl;
	}
	
}
