package Handlers.Tour;

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
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import Handlers.Handler;
import VOS.Tour.TourVo;

public class TourInfoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String contenttypeid = request.getParameter("contentTypeId");
		int pageNum = 1;
		if (contenttypeid == null || contenttypeid.isEmpty()) {
			contenttypeid = "12";
	    }	
		if(request.getMethod().equals("POST")){
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			contenttypeid = request.getParameter("contentTypeId");
		}
		
		String key = "SdeOzBODvCDlqYbh6xnuIifdMoGefFkydegygHP3jmHIH3dLH99Plz%2FBTKEsFv0Lem1%2FbMHPImBnr8ei95GLLA%3D%3D";
		String path = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1?serviceKey="+key+"&pageNo="+pageNum+"&numOfRows=10&MobileApp=AppTest&MobileOS=ETC&arrange=A&contentTypeId="+contenttypeid;
		
		
		try {
		URL url = new URL(path);
		URLConnection conn = url.openConnection();
		InputStream is = conn.getInputStream();

		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder = factory.newDocumentBuilder();
		Document doc = builder.parse(is);
		Element root = doc.getDocumentElement();
		NodeList itemList  = root.getElementsByTagName("item");
		NodeList bodyList =  root.getElementsByTagName("body");
		int totalCount = 1;
		for(int i=0; i<bodyList.getLength(); i++) {
			Element bodyData = (Element) bodyList.item(i);
			totalCount = Integer.parseInt(bodyData.getElementsByTagName("totalCount").item(0).getTextContent());
		}
		ArrayList<TourVo> list = new ArrayList<>();
		String contentType = "";
		for(int i=0; i<itemList.getLength(); i++) {
			Element tourData = (Element) itemList.item(i);
			String addr1 = tourData.getElementsByTagName("addr1").item(0).getTextContent();
			String addr2 = tourData.getElementsByTagName("addr2").item(0).getTextContent();
			String cat1 = tourData.getElementsByTagName("cat1").item(0).getTextContent();
			String cat2 = tourData.getElementsByTagName("cat2").item(0).getTextContent();
			String contentId = tourData.getElementsByTagName("contentid").item(0).getTextContent();
			contentType = tourData.getElementsByTagName("contenttypeid").item(0).getTextContent();
			String firstimage = tourData.getElementsByTagName("firstimage").item(0).getTextContent();
			String firstimage2 = tourData.getElementsByTagName("firstimage2").item(0).getTextContent();
			String mapX = tourData.getElementsByTagName("mapx").item(0).getTextContent();
			String mapY = tourData.getElementsByTagName("mapy").item(0).getTextContent();
			String tel = tourData.getElementsByTagName("title").item(0).getTextContent();
			String title = tourData.getElementsByTagName("tel").item(0).getTextContent();
			
			list.add(new TourVo(addr1, addr2,cat1,cat2,contentId, contentType, firstimage, firstimage2, mapX, mapY, tel, title));
		}

		request.setAttribute("contenttypeid", contentType);
		request.setAttribute("list", list);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalCount", (int) Math.ceil( (double) totalCount) / 10);
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
		return "/tour/tourlist.jsp";
	}
}
