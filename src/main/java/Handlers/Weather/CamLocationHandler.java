package Handlers.Weather;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import VOS.WeatherVo.CamLocationList;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import Handlers.Handler;
import VOS.WeatherVo.CamLocation;

public class CamLocationHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String mapX = request.getParameter("mapX");
		String mapY = request.getParameter("mapY");
		String radius = request.getParameter("radius");
		String key = "SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D";
		String path = "http://apis.data.go.kr/B551011/GoCamping/locationBasedList?serviceKey="+key+"&MobileOS=ETC&MobileApp=AppTest"
				+ "&mapX=" + mapX + "&mapY=" + mapY + "&radius=" + radius;

		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();

			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(is);
			
			Element root = doc.getDocumentElement();
			NodeList itemlist = root.getElementsByTagName("item");
			NodeList bodys = root.getElementsByTagName("body");
			ArrayList<CamLocation> list = new ArrayList<>();
			ArrayList<CamLocationList> total= new ArrayList<>();
			String totalCount = "";
			for(int i=0; i<bodys.getLength(); i++) {
				Element body = (Element) bodys.item(i);
				totalCount = body.getElementsByTagName("totalCount").item(0).getTextContent();
			}
			
			for(int i=0; i<itemlist.getLength(); i++) {
				Element data = (Element) itemlist.item(i);
				String mapx = data.getElementsByTagName("mapX").item(0).getTextContent();
				String mapy = data.getElementsByTagName("mapY").item(0).getTextContent();
				String contentId = data.getElementsByTagName("contentId").item(0).getTextContent();
				String facltNm = data.getElementsByTagName("facltNm").item(0).getTextContent();
				String lineIntro = data.getElementsByTagName("lineIntro").item(0).getTextContent();
				String intro = data.getElementsByTagName("intro").item(0).getTextContent();
				String induty = data.getElementsByTagName("induty").item(0).getTextContent();
				String manageSttus = data.getElementsByTagName("manageSttus").item(0).getTextContent();
				String hvofBgnde = data.getElementsByTagName("hvofBgnde").item(0).getTextContent();
				String hvofEnddle = data.getElementsByTagName("hvofEnddle").item(0).getTextContent();
				String featureNm = data.getElementsByTagName("featureNm").item(0).getTextContent();
				String lctCl = data.getElementsByTagName("lctCl").item(0).getTextContent();
				
				String doNm = data.getElementsByTagName("doNm").item(0).getTextContent();
				String sigunguNm = data.getElementsByTagName("sigunguNm").item(0).getTextContent();
				String zipcode = data.getElementsByTagName("zipcode").item(0).getTextContent();
				String addr1 = data.getElementsByTagName("addr1").item(0).getTextContent();
				String addr2 = data.getElementsByTagName("addr2").item(0).getTextContent();
				String tel = data.getElementsByTagName("tel").item(0).getTextContent();
				String homepage = data.getElementsByTagName("homepage").item(0).getTextContent();
				list.add(new CamLocation(mapX, mapY, contentId, facltNm, lineIntro, intro, induty, manageSttus,
						hvofBgnde, hvofEnddle, featureNm, lctCl, doNm, sigunguNm, zipcode, addr1, addr2, tel, homepage));
			}
			total.add(new CamLocationList(list, totalCount));
			request.setAttribute("total", total);
			
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

		return "/camlocation/list.jsp";
	}

}
