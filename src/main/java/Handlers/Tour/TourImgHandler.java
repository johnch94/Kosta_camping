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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import Handlers.Handler;
import VOS.Tour.TourImg;

public class TourImgHandler implements Handler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String contentid = request.getParameter("contentid");
		String path = "https://apis.data.go.kr/B551011/KorService1/detailImage1?serviceKey=SdeOzBODvCDlqYbh6xnuIifdMoGefFkydegygHP3jmHIH3dLH99Plz%2FBTKEsFv0Lem1%2FbMHPImBnr8ei95GLLA%3D%3D&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&contentId="+contentid+"&imageYN=Y&subImageYN=Y";
			
		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();
			DocumentBuilderFactory factory = DocumentBuilderFactory.newDefaultInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(is);
			Element root = doc.getDocumentElement();
			NodeList nodes = root.getElementsByTagName("items");
			
			ArrayList<TourImg> tourImg = new ArrayList<>();
			for (int i = 0; i < nodes.getLength(); i++) {
				Element tourEle = (Element) nodes.item(i);
				NodeList imgUrls = tourEle.getElementsByTagName("originimgurl");
				for (int j = 0; j < imgUrls.getLength(); j++) {
			        String imgurl = imgUrls.item(j).getTextContent();
			        tourImg.add(new TourImg(imgurl));
			    }
			}
			JSONArray jsonStr = new JSONArray();
			for(int i=0; i<tourImg.size(); i++) {
				JSONObject imgs = new JSONObject();
				imgs.put("imgs", tourImg.get(i).getTourImg());
				jsonStr.add(imgs);
			}
		
			response.getWriter().write(jsonStr.toJSONString());
			return null;
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
		return null;
	}
}