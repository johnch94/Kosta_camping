package Handlers.Camping;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import VOS.Board.CamSearch;
import Handlers.Handler;

public class CamSearchHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int pageNum = 1;
		
		if(request.getMethod().equals("POST")) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		
		String url = "https://apis.data.go.kr/B551011/GoCamping/basedList?pageNo=" + pageNum + "&MobileOS=WIN&MobileApp=GoCamping&serviceKey=SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D&_type=json";
		
		try {
			URL url2 = new URL(url);
			URLConnection conn = url2.openConnection();
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(conn.getInputStream()));
			JSONObject response1 = (JSONObject) obj.get("response");
			JSONObject header = (JSONObject) response1.get("header");
			JSONObject body = (JSONObject) response1.get("body");
			JSONObject items = (JSONObject) body.get("items");
			int totalCount = Integer.parseInt(String.valueOf(body.get("totalCount"))); // page
			JSONArray item = (JSONArray) items.get("item");
			
			ArrayList<CamSearch> list = new ArrayList<>();
			
			for(int i = 0; i < item.size(); i++) {
				JSONObject o = (JSONObject) item.get(i);
				
				String contentId = (String) o.get("contentId");
				if(contentId.equals("10")) {
					continue;	
				}
				String facltNm = (String) o.get("facltNm");
				String featureNm = (String) o.get("featureNm");
				String lineIntro = (String) o.get("lineIntro");
				String intro = (String) o.get("intro");
				String addr1 = (String) o.get("addr1");
				String addr2 = (String) o.get("addr2");
				String sbrsCl = (String) o.get("sbrsCl");	
				String firstImageUrl = (String) o.get("firstImageUrl");
				
				list.add(new CamSearch(contentId, facltNm, lineIntro, intro, featureNm, addr1, addr2, sbrsCl, firstImageUrl));
			}
			int page = list.size();

			
			request.setAttribute("list", list);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("totalCount", (int) Math.ceil( (double) totalCount) / 10);
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/camping/list.jsp";
	}

}
