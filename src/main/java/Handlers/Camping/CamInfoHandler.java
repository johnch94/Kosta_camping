package Handlers.Camping;

import VOS.CamList.CamInfo;
import Handlers.Handler;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;

public class CamInfoHandler implements Handler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        // TODO Auto-generated method stub
//      String serviceKey = "SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D";
        String keyword = request.getParameter("kw");
        String encoded = null;
        System.out.println(keyword);
        try {
            encoded = URLEncoder.encode(keyword, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        String url = "https://apis.data.go.kr/B551011/GoCamping/searchList?numOfRows=10&pageNo=1"
                + "&MobileOS=AND&MobileApp=GoCamping&serviceKey=SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D&_type=json&keyword="
                + encoded;
        try {
            URL u = new URL(url);
            URLConnection conn = u.openConnection();
            JSONParser parser = new JSONParser();
            JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(conn.getInputStream()));
            JSONObject response1 = (JSONObject) obj.get("response");
            JSONObject body = (JSONObject) response1.get("body");
            JSONObject items = (JSONObject) body.get("items");
            JSONArray item = (JSONArray) items.get("item");

            ArrayList<CamInfo> list = new ArrayList<>();
            String[] split = null;
            for (Object object : item) {
                JSONObject o = new JSONObject();
                o = (JSONObject) object;
                String contentId = (String) o.get("contentId");
                String facltNm = (String) o.get("facltNm");
                String lineIntro = (String) o.get("lineIntro");
                String intro = (String) o.get("intro");
                String allar = (String) o.get("allar");
                String facltDivNm = (String) o.get("facltDivNm");
                String manageSttus = (String) o.get("manageSttus");
                String featureNm = (String) o.get("featureNm");
                String induty = (String) o.get("induty");
                String lctCl = (String) o.get("lctCl");
                String doNm = (String) o.get("doNm");
                String sigunguNm = (String) o.get("sigunguNm");
                String zipcode = (String) o.get("zipcode");
                String addr1 = (String) o.get("addr1");
                String addr2 = (String) o.get("addr2");
                String mapX = (String) o.get("mapX");
                String mapY = (String) o.get("mapY");
                mapX = mapX.substring(0,10);
                mapY = mapY.substring(0,10);
                String tel = (String) o.get("tel");
                String resveUrl = (String) o.get("resveUrl");
                String gnrlSiteCo = (String) o.get("gnrlSiteCo");
                String autoSiteCo = (String) o.get("autoSiteCo");
                String glampSiteCo = (String) o.get("glampSiteCo");
                String caravSiteCo = (String) o.get("caravSiteCo");
                String indvdlCaravSiteCo = (String) o.get("indvdlCaravSiteCo");
                String glampInnerFclty = (String) o.get("glampInnerFclty");
                String caravInnerFclty = (String) o.get("caravInnerFclty");
                String operPdCl = (String) o.get("operPdCl");
                String operDeCl = (String) o.get("operDeCl");
                String toiletCo = (String) o.get("toiletCo");
                String swrmCo = (String) o.get("swrmCo");
                String wtrplCo = (String) o.get("wtrplCo");
                String brazierCl = (String) o.get("brazierCl");
                String sbrsCl = (String) o.get("sbrsCl");
                split = sbrsCl.split(",");
                String posbFcltyCl = (String) o.get("posbFcltyCl");
                String exprnProgrmAt = (String) o.get("exprnProgrmAt");
                String exprnProgrm = String.valueOf(o.get("exprnProgrm"));
                String animalCmgCl = (String) o.get("animalCmgCl");
                String firstImageUrl = (String) o.get("firstImageUrl");
                String createdtime = (String) o.get("createdtime");
                String modifiedtime = (String) o.get("modifiedtime");

                list.add(new CamInfo(contentId, facltNm, lineIntro, intro, allar, facltDivNm,
                        manageSttus, featureNm, induty, lctCl, doNm, sigunguNm,
                        zipcode, addr1, addr2, mapX, mapY, tel, resveUrl,
                        gnrlSiteCo, autoSiteCo, glampSiteCo, caravSiteCo, indvdlCaravSiteCo,
                        glampInnerFclty, caravInnerFclty, operPdCl, operDeCl, toiletCo,
                        swrmCo, wtrplCo, brazierCl, split, posbFcltyCl, exprnProgrmAt,
                        exprnProgrm, animalCmgCl, firstImageUrl, createdtime, modifiedtime));

            }

            request.setAttribute("list", list);
            request.setAttribute("split", split);
            request.setAttribute("keyword", keyword);

        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (org.json.simple.parser.ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return "/camping/info.jsp";
    }

}