package Handlers.Camping;

import VOS.CamList.List;
import Handlers.Handler;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;

public class SearchListHandler implements Handler {


    @Override
    public String process(HttpServletRequest req, HttpServletResponse res) {
        int pageNum = 1;
        if(req.getMethod().equals("POST")){
            pageNum = Integer.parseInt(req.getParameter("num"));
            System.out.println(pageNum);
        }
//            res.setCharacterEncoding("utf-8");
//            req.setCharacterEncoding("utf-8");
//            res.setContentType("text/html; charset=UTF-8");
//            int numOfRows = Integer.parseInt(req.getParameter("numOfRows"));
//            int pageNo = Integer.parseInt(req.getParameter("pageNo"));
            String serviceKey = "SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D";
//            String MobileOs = req.getParameter("MobileOs");
//            String MobileApp = req.getParameter("MobileApp");

            try {
                String keyword = req.getParameter("kw");
                String encoded = URLEncoder.encode(keyword, "UTF-8");
                String url = "https://apis.data.go.kr/B551011/GoCamping/searchList?numOfRows=10&pageNo="+pageNum+"&MobileOS=AND&MobileApp=GoCamping&serviceKey=SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D&_type=json&keyword="+encoded;
                URL u = new URL(url);
                URLConnection conn = u.openConnection();
                JSONParser parser = new JSONParser();
                JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(conn.getInputStream()));
                JSONObject response = (JSONObject) obj.get("response");
                JSONObject body = (JSONObject) response.get("body");
                JSONObject items = (JSONObject) body.get("items");
                JSONArray item = (JSONArray) items.get("item");

                ArrayList<List> list = new ArrayList<>();
                int totalCount = Integer.parseInt(String.valueOf(body.get("totalCount")));
                for (Object object : item) {
                    JSONObject o = new JSONObject();
                    o = (JSONObject) object;
                    String contentId = (String) o.get("contentId");
                    String facltNm = (String) o.get("facltNm");
                    String addr1 = (String) o.get("addr1");
                    String addr2 = (String) o.get("addr2");
                    String sbrsCl = (String) o.get("sbrsCl");
                    String firstImageUrl = (String) o.get("firstImageUr");
                    String featureNm = (String) o.get("featureNm");
                    String intro = (String) o.get("intro");
                    String lineIntro = (String) o.get("lineIntro");

                    String glampSite = (String) o.get("glampSite");
                    String caravSiteCo = (String) o.get("caravSiteCo");
                    String indvdlCaravSiteCo = (String) o.get("indvdlCaravSiteCo");
                    String glampInnerFclty = (String) o.get("glampInnerFclty");
                    String caravInnerFclty = (String) o.get("caravInnerFclty");
                    String openPdCl = (String) o.get("openPdCl");
                    String openDeCl = (String) o.get("openDeCl");
                    String toiletCo = (String) o.get("toiletCo");
                    String swrmCo = (String) o.get("swrmCo");
                    String wtrplCo = (String) o.get("wtrplCo");
                    String brazierCl = (String) o.get("brazierCl");
                    String posbFcltyCl = (String) o.get("posbFcltyCl");
                    String exprnProgrmAt = (String) o.get("exprnProgrmAt");
                    String exprnProgrm = String.valueOf(o.get("exprnProgrm"));
                    String animalCmgCl = (String) o.get("animalCmgCl");
                    String autoSiteCo = (String) o.get("autoSiteCo");
                    String createdtime = (String) o.get("createdtime");
                    String modifiedtime = (String) o.get("modifiedtime");
                    list.add(new List(contentId,facltNm,featureNm,intro,lineIntro ,addr1,addr2,sbrsCl,firstImageUrl));
                }
                int totalPages = (int) Math.ceil((double) totalCount/10);
                System.out.println(list.size());
                System.out.println(totalPages);
                req.setAttribute("list", list);
                req.setAttribute("keyword", keyword);
                req.setAttribute("num",pageNum);
                req.setAttribute("totalPages", totalPages);
            } catch (MalformedURLException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }

        System.out.println(pageNum);
        return "/list/list.jsp";
    }
}
