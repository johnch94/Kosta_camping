package Handlers.Tour;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
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
import VOS.Tour.TourDetailVo;

public class TourDetailHandler implements Handler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String mapX = request.getParameter("mapX");
		String mapY = request.getParameter("mapY");
		String contentid = request.getParameter("contentId");
		String path = "http://apis.data.go.kr/B551011/KorService1/detailCommon1?serviceKey=SdeOzBODvCDlqYbh6xnuIifdMoGefFkydegygHP3jmHIH3dLH99Plz%2FBTKEsFv0Lem1%2FbMHPImBnr8ei95GLLA%3D%3D"
				+ "&contentId="+contentid+"&defaultYN=Y&addrinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTest";
		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();
			DocumentBuilderFactory factory = DocumentBuilderFactory.newDefaultInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(is);
			Element root = doc.getDocumentElement();
			NodeList nodes = root.getElementsByTagName("item");
			ArrayList<TourDetailVo> tour_detail = new ArrayList<>();
			String title = null;
			for (int i = 0; i < nodes.getLength(); i++) {
				Element tourEle = (Element) nodes.item(i);
				String contentTypeId = tourEle.getElementsByTagName("contenttypeid").item(0).getTextContent();
				title = tourEle.getElementsByTagName("title").item(0).getTextContent();
				String tel = tourEle.getElementsByTagName("tel").item(0).getTextContent();
				String homepage = tourEle.getElementsByTagName("homepage").item(0).getTextContent();
				String addr1 = tourEle.getElementsByTagName("addr1").item(0).getTextContent();
				String zipcode = tourEle.getElementsByTagName("zipcode").item(0).getTextContent();
				String overview = tourEle.getElementsByTagName("overview").item(0).getTextContent();
				tour_detail.add(
						new TourDetailVo(contentid, contentTypeId, title, tel, homepage, addr1, zipcode, overview, mapX, mapY));
			}
			request.setAttribute("title", title);
			request.setAttribute("tour_detail", tour_detail);
			request.setAttribute("contentid", contentid);
		} catch (FileNotFoundException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/tour/tourdetail.jsp";
	}
}