package VOS.CamList;

public class CamInfo {
    private String contentId;         // 콘텐츠 id
    private String facltNm;            // 야영장 명
    private String lineIntro;          // 한줄 소개
    private String intro;             // 소개
    private String allar;             // 전체 면적
    private String facltDivNm;          // 사업주체 ex) 민간
    private String manageSttus;       // 운영상태/관리상태
    private String featureNm;          // 특징 ex) 물놀이 시설 잘 갖추어짐
    private String induty;             // 업종 ex) 일반 야영장, 카라반, 글램핑
    private String lctCl;             // 입지 구분
    private String doNm;             // 도
    private String sigunguNm;         // 시군구
    private String zipcode;          // 우편번호
    private String addr1;            // 주소
    private String addr2;            // 상세 주소
    private String mapX;            // 경도(X)
    private String mapY;            // 위도(Y)
    private String tel;               // 전화
    private String resveUrl;          // 예약 페이지
    private String gnrlSiteCo;         // 주요시설 일반야영장
    private String autoSiteCo;         // 주요시설 자동차야영장
    private String glampSiteCo;       // 주요시설 글램핑
    private String caravSiteCo;       // 주요시설 카라반
    private String indvdlCaravSiteCo;   // 주요시설 개인 카라반
    private String glampInnerFclty;      // 글램핑 - 내부 시설
    private String caravInnerFclty;    // 카라반 - 내부 시설
    private String operPdCl;         // 운영기간
    private String operDeCl;         // 운영일
    private String toiletCo;         // 화장실 개수
    private String swrmCo;            // 샤워실 개수
    private String wtrplCo;            // 개수대 개수
    private String brazierCl;         // 화로대
    private String[] sbrsCl;            // 부대시설
    private String posbFcltyCl;         // 주변이용가능시설
    private String exprnProgrmAt;      // 체험 프로그램 여부
    private String exprnProgrm;         // 체험 프로그램명
    private String animalCmgCl;         // 애완동물 출입
    private String firstImageUrl;      // 대표이미지
    private String createdtime;         // 등록일
    private String modifiedtime;      // 수정일

    public CamInfo() {

    }

    public CamInfo(String contentId, String facltNm, String lineIntro, String intro, String allar, String facltDivNm,
                   String manageSttus, String featureNm, String induty, String lctCl, String doNm, String sigunguNm,
                   String zipcode, String addr1, String addr2, String mapX, String mapY, String tel, String resveUrl,
                   String gnrlSiteCo, String autoSiteCo, String glampSiteCo, String caravSiteCo, String indvdlCaravSiteCo,
                   String glampInnerFclty, String caravInnerFclty, String operPdCl, String operDeCl, String toiletCo,
                   String swrmCo, String wtrplCo, String brazierCl, String[] sbrsCl, String posbFcltyCl, String exprnProgrmAt,
                   String exprnProgrm, String animalCmgCl, String firstImageUrl, String createdtime, String modifiedtime) {
        super();
        this.contentId = contentId;
        this.facltNm = facltNm;
        this.lineIntro = lineIntro;
        this.intro = intro;
        this.allar = allar;
        this.facltDivNm = facltDivNm;
        this.manageSttus = manageSttus;
        this.featureNm = featureNm;
        this.induty = induty;
        this.lctCl = lctCl;
        this.doNm = doNm;
        this.sigunguNm = sigunguNm;
        this.zipcode = zipcode;
        this.addr1 = addr1;
        this.addr2 = addr2;
        this.mapX = mapX;
        this.mapY = mapY;
        this.tel = tel;
        this.resveUrl = resveUrl;
        this.gnrlSiteCo = gnrlSiteCo;
        this.autoSiteCo = autoSiteCo;
        this.glampSiteCo = glampSiteCo;
        this.caravSiteCo = caravSiteCo;
        this.indvdlCaravSiteCo = indvdlCaravSiteCo;
        this.glampInnerFclty = glampInnerFclty;
        this.caravInnerFclty = caravInnerFclty;
        this.operPdCl = operPdCl;
        this.operDeCl = operDeCl;
        this.toiletCo = toiletCo;
        this.swrmCo = swrmCo;
        this.wtrplCo = wtrplCo;
        this.brazierCl = brazierCl;
        this.sbrsCl = sbrsCl;
        this.posbFcltyCl = posbFcltyCl;
        this.exprnProgrmAt = exprnProgrmAt;
        this.exprnProgrm = exprnProgrm;
        this.animalCmgCl = animalCmgCl;
        this.firstImageUrl = firstImageUrl;
        this.createdtime = createdtime;
        this.modifiedtime = modifiedtime;
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

    public String getAllar() {
        return allar;
    }

    public void setAllar(String allar) {
        this.allar = allar;
    }

    public String getFacltDivNm() {
        return facltDivNm;
    }

    public void setFacltDivNm(String facltDivNm) {
        this.facltDivNm = facltDivNm;
    }

    public String getManageSttus() {
        return manageSttus;
    }

    public void setManageSttus(String manageSttus) {
        this.manageSttus = manageSttus;
    }

    public String getFeatureNm() {
        return featureNm;
    }

    public void setFeatureNm(String featureNm) {
        this.featureNm = featureNm;
    }

    public String getInduty() {
        return induty;
    }

    public void setInduty(String induty) {
        this.induty = induty;
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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getResveUrl() {
        return resveUrl;
    }

    public void setResveUrl(String resveUrl) {
        this.resveUrl = resveUrl;
    }

    public String getGnrlSiteCo() {
        return gnrlSiteCo;
    }

    public void setGnrlSiteCo(String gnrlSiteCo) {
        this.gnrlSiteCo = gnrlSiteCo;
    }

    public String getAutoSiteCo() {
        return autoSiteCo;
    }

    public void setAutoSiteCo(String autoSiteCo) {
        this.autoSiteCo = autoSiteCo;
    }

    public String getGlampSiteCo() {
        return glampSiteCo;
    }

    public void setGlampSiteCo(String glampSiteCo) {
        this.glampSiteCo = glampSiteCo;
    }

    public String getCaravSiteCo() {
        return caravSiteCo;
    }

    public void setCaravSiteCo(String caravSiteCo) {
        this.caravSiteCo = caravSiteCo;
    }

    public String getIndvdlCaravSiteCo() {
        return indvdlCaravSiteCo;
    }

    public void setIndvdlCaravSiteCo(String indvdlCaravSiteCo) {
        this.indvdlCaravSiteCo = indvdlCaravSiteCo;
    }

    public String getGlampInnerFclty() {
        return glampInnerFclty;
    }

    public void setGlampInnerFclty(String glampInnerFclty) {
        this.glampInnerFclty = glampInnerFclty;
    }

    public String getCaravInnerFclty() {
        return caravInnerFclty;
    }

    public void setCaravInnerFclty(String caravInnerFclty) {
        this.caravInnerFclty = caravInnerFclty;
    }

    public String getOperPdCl() {
        return operPdCl;
    }

    public void setOperPdCl(String operPdCl) {
        this.operPdCl = operPdCl;
    }

    public String getOperDeCl() {
        return operDeCl;
    }

    public void setOperDeCl(String operDeCl) {
        this.operDeCl = operDeCl;
    }

    public String getToiletCo() {
        return toiletCo;
    }

    public void setToiletCo(String toiletCo) {
        this.toiletCo = toiletCo;
    }

    public String getSwrmCo() {
        return swrmCo;
    }

    public void setSwrmCo(String swrmCo) {
        this.swrmCo = swrmCo;
    }

    public String getWtrplCo() {
        return wtrplCo;
    }

    public void setWtrplCo(String wtrplCo) {
        this.wtrplCo = wtrplCo;
    }

    public String getBrazierCl() {
        return brazierCl;
    }

    public void setBrazierCl(String brazierCl) {
        this.brazierCl = brazierCl;
    }

    public String[] getSbrsCl() {
        return sbrsCl;
    }

    public void setSbrsCl(String[] sbrsCl) {
        this.sbrsCl = sbrsCl;
    }

    public String getPosbFcltyCl() {
        return posbFcltyCl;
    }

    public void setPosbFcltyCl(String posbFcltyCl) {
        this.posbFcltyCl = posbFcltyCl;
    }

    public String getExprnProgrmAt() {
        return exprnProgrmAt;
    }

    public void setExprnProgrmAt(String exprnProgrmAt) {
        this.exprnProgrmAt = exprnProgrmAt;
    }

    public String getExprnProgrm() {
        return exprnProgrm;
    }

    public void setExprnProgrm(String exprnProgrm) {
        this.exprnProgrm = exprnProgrm;
    }

    public String getAnimalCmgCl() {
        return animalCmgCl;
    }

    public void setAnimalCmgCl(String animalCmgCl) {
        this.animalCmgCl = animalCmgCl;
    }

    public String getFirstImageUrl() {
        return firstImageUrl;
    }

    public void setFirstImageUrl(String firstImageUrl) {
        this.firstImageUrl = firstImageUrl;
    }

    public String getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(String createdtime) {
        this.createdtime = createdtime;
    }

    public String getModifiedtime() {
        return modifiedtime;
    }

    public void setModifiedtime(String modifiedtime) {
        this.modifiedtime = modifiedtime;
    }

}
