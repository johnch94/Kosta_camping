package VOS.CamList;

public class List {
    private String contentId; //아영장명
    private String facltNm;
    private String featureNm;
    private String addr1;
    private String addr2;
    private String sbrsCl;
    private String firstImageUrl;
    private String intro;
    private String tel;
    private String autoSiteCo;         // 주요시설 자동차야영장
    private String glampSiteCo;       // 주요시설 글램핑
    private String caravSiteCo;       // 주요시설 카라반
    private String indvdlCaravSiteCo;   // 주요시설 개인 카라반
    private String glampInnerFclty;      // 글램핑 - 내부 시설
    private String caravInnerFclty;    // 카라반 - 내부 시설
    private String openPdCl;         // 운영기간
    private String openDeCl;         // 운영일
    private String toiletCo;         // 화장실 개수
    private String swrmCo;            // 샤워실 개수
    private String wtrplCo;            // 개수대 개수
    private String brazierCl;         // 화로대
    private String posbFcltyCl;         // 주변이용가능시설
    private String exprnProgrmAt;      // 체험 프로그램 여부
    private String exprnProgrm;         // 체험 프로그램명
    private String animalCmgCl;         // 애완동물 출입
    private String createdtime;         // 등록일
    private String modifiedtime;

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public List(String contentId, String facltNm, String featureNm, String addr1, String addr2, String sbrsCl, String firstImageUrl, String intro, String autoSiteCo, String glampSiteCo, String caravSiteCo, String indvdlCaravSiteCo, String glampInnerFclty, String caravInnerFclty, String openPdCl, String openDeCl, String toiletCo, String swrmCo, String wtrplCo, String brazierCl, String posbFcltyCl, String tel) {
        this.contentId = contentId;
        this.facltNm = facltNm;
        this.featureNm = featureNm;
        this.addr1 = addr1;
        this.addr2 = addr2;
        this.sbrsCl = sbrsCl;
        this.firstImageUrl = firstImageUrl;
        this.intro = intro;
        this.autoSiteCo = autoSiteCo;
        this.glampSiteCo = glampSiteCo;
        this.caravSiteCo = caravSiteCo;
        this.indvdlCaravSiteCo = indvdlCaravSiteCo;
        this.glampInnerFclty = glampInnerFclty;
        this.caravInnerFclty = caravInnerFclty;
        this.openPdCl = openPdCl;
        this.openDeCl = openDeCl;
        this.toiletCo = toiletCo;
        this.swrmCo = swrmCo;
        this.wtrplCo = wtrplCo;
        this.brazierCl = brazierCl;
        this.posbFcltyCl = posbFcltyCl;
        this.tel = tel;
    }

    private String lineIntro;

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getLineIntro() {
        return lineIntro;
    }

    public void setLineIntro(String lineIntro) {
        this.lineIntro = lineIntro;
    }

    public List(String contentId, String facltNm, String featureNm, String intro, String lineIntro, String addr1, String addr2, String sbrsCl, String firstImageUrl, String tel) {
        this.contentId = contentId;
        this.facltNm = facltNm;
        this.featureNm = featureNm;
        this.intro = intro;
        this.lineIntro = lineIntro;
        this.addr1 = addr1;
        this.addr2 = addr2;
        this.sbrsCl = sbrsCl;
        this.firstImageUrl = firstImageUrl;
        this.tel = tel;
    }

    public List() {
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

    @Override
    public String toString() {
        return "SearchList{" +
            "contentId='" + contentId + '\'' +
            ", facltNm='" + facltNm + '\'' +
            ", featureNm='" + featureNm + '\'' +
            ", addr1='" + addr1 + '\'' +
            ", addr2='" + addr2 + '\'' +
            ", sbrsCl='" + sbrsCl + '\'' +
            ", firstImageUrl='" + firstImageUrl + '\'' +
            '}';
    }
}
