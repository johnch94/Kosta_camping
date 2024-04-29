package Handlers.Tour;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import Handlers.Handler;
import VOS.Tour.TourVo;

public class TourRecommendHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String contenttypeid = request.getParameter("id");
		String pageNum = request.getParameter("pageNum");
		String key = "SdeOzBODvCDlqYbh6xnuIifdMoGefFkydegygHP3jmHIH3dLH99Plz%2FBTKEsFv0Lem1%2FbMHPImBnr8ei95GLLA%3D%3D";
		String path2 = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1?serviceKey="+key+"&pageNo="+pageNum+"&numOfRows=1&MobileApp=AppTest&MobileOS=ETC&arrange=A&contentTypeId="+contenttypeid;
		
		try {
		URL url2 = new URL(path2);
		URLConnection conn2 = url2.openConnection();
		InputStream is2 = conn2.getInputStream();

		DocumentBuilderFactory factory2 = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder2 = factory2.newDocumentBuilder();
		Document doc2 = builder2.parse(is2);
		Element root2 = doc2.getDocumentElement();
		NodeList itemList2  = root2.getElementsByTagName("item");
		NodeList bodyList2 =  root2.getElementsByTagName("body");
		
		
		
		ArrayList<TourVo> tourRclist = new ArrayList<>();
		String contentType = "";
		for(int i=0; i<itemList2.getLength(); i++) {
			Element tourData = (Element) itemList2.item(i);
			contentType = tourData.getElementsByTagName("contenttypeid").item(0).getTextContent();
			String addr1 = tourData.getElementsByTagName("addr1").item(0).getTextContent();
			String addr2 = tourData.getElementsByTagName("addr2").item(0).getTextContent();
			String cat1 = tourData.getElementsByTagName("cat1").item(0).getTextContent();
			String cat2 = tourData.getElementsByTagName("cat2").item(0).getTextContent();
			String contentId = tourData.getElementsByTagName("contentid").item(0).getTextContent();
			String firstimage = tourData.getElementsByTagName("firstimage").item(0).getTextContent();
			String firstimage2 = tourData.getElementsByTagName("firstimage2").item(0).getTextContent();
			String mapX = tourData.getElementsByTagName("mapx").item(0).getTextContent();
			String mapY = tourData.getElementsByTagName("mapy").item(0).getTextContent();
			String tel = tourData.getElementsByTagName("title").item(0).getTextContent();
			String title = tourData.getElementsByTagName("tel").item(0).getTextContent();
			
			if(!cat1.equals("BO2")) {
			tourRclist.add(new TourVo(addr1, addr2,cat1,cat2,contentId, contentType, firstimage, firstimage2, mapX, mapY, tel, title));
			}
		}
		
		JSONArray jsonStr = new JSONArray();
		for(int i=0; i<tourRclist.size(); i++) {
			JSONObject recomtour = new JSONObject();
			recomtour.put("mapX", tourRclist.get(i).getMapX());
			recomtour.put("mapY", tourRclist.get(i).getMapY());
			recomtour.put("contentid", tourRclist.get(i).getContentId());
			recomtour.put("firstimage", tourRclist.get(i).getFirstimage());
			recomtour.put("title", tourRclist.get(i).getTitle());
			String changeCat = tourRclist.get(i).getCat1();
			switch(changeCat) {
			case "A01":
				changeCat = "🏞️자연";
				break;
			case "A02": 
				changeCat = "🏞️인문(문화/예술/역사)";
				break;
			case "A03": 
				changeCat = "🏞️레저스포츠";
				break;
			case "A04": 
				changeCat = "🏞️쇼핑";
				break;
			case "A05": 
				changeCat = "🏞️음식";
				break;
			case "C01": 
				changeCat = "🏞️추천코스";
				break;
			}
			recomtour.put("cat1", changeCat);
			jsonStr.add(recomtour);
		}
		
		
		response.getWriter().write(jsonStr.toJSONString());
		return null;
		
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}