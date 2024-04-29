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
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;

public class SearchListHandler implements Handler {


    @Override
    public String process(HttpServletRequest req, HttpServletResponse res){
        int pageNum = 1;
        String keyword = "";
        if(req.getMethod().equals("POST")){
            pageNum = Integer.parseInt(req.getParameter("num"));
            System.out.println(pageNum);
        }
            String serviceKey = "SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D";
            String kw = req.getParameter("kw");
            char[] chars = kw.toCharArray();
            String s = String.valueOf(chars[0]);
        if(s.equals("#")){
            keyword = kw.substring(1,chars.length);
        }else{
            keyword = kw;
        }
        String encoded = null;
        try {
            encoded = URLEncoder.encode(keyword, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        String url = "https://apis.data.go.kr/B551011/GoCamping/searchList?numOfRows=3&pageNo="+pageNum+"&MobileOS=AND&MobileApp=GoCamping&serviceKey=SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D&_type=json&keyword="+encoded;
            try {
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
                    String firstImageUrl = (String) o.get("firstImageUrl");
                    String featureNm = (String) o.get("featureNm");
                    String intro = (String) o.get("intro");
                    String lineIntro = (String) o.get("lineIntro");
                    String tel = (String) o.get("tel");
                    list.add(new List(contentId,facltNm,featureNm,intro,lineIntro ,addr1,addr2,sbrsCl,firstImageUrl,tel));
                }
                int totalPages = (int) Math.ceil((double) totalCount/3);
                System.out.println(list.size());
                System.out.println(totalPages);
                req.setAttribute("list", list);
                req.setAttribute("keyword", keyword);
                req.setAttribute("num",pageNum);
                req.setAttribute("totalPages", totalPages);
            } catch (MalformedURLException | ClassCastException | ParseException e) {
                return "redirect:/index.jsp";
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        return "/camping/searchlist.jsp";
    }
}
