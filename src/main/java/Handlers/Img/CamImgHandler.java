package Handlers.Img;

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
import VOS.Image.Img;

public class CamImgHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String contentId = request.getParameter("contentId");
		String path = "http://apis.data.go.kr/B551011/GoCamping/imageList?serviceKey=SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D&MobileOS=ETC&MobileApp=AppTest&contentId="+contentId;
		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(is);
			Element root = doc.getDocumentElement();
			NodeList nodes = root.getElementsByTagName("items");
			String imgUrl = "";
			ArrayList<Img> ll = new ArrayList<>();

			for (int i = 0; i < nodes.getLength(); i++) {
				Element itemEle = (Element) nodes.item(i);
				NodeList nodes4 = itemEle.getElementsByTagName("item");
				for(int j=0; j<nodes4.getLength(); j++) {
					Element img =(Element)nodes4.item(j);
					imgUrl = img.getElementsByTagName("imageUrl").item(0).getTextContent();
					ll.add(new Img(null, null, imgUrl));
				}
			}
			JSONArray jsonStr = new JSONArray();
			JSONObject imgs = new JSONObject();
			int cnt=1;
			for(Img i : ll){
				String imageurlname = "imageUrl" + cnt;
				imgs.put(imageurlname, i.getImageUrl());
				jsonStr.add(imgs);
				cnt++;
			}
			response.getWriter().write(jsonStr.toJSONString());
			return null;
		} catch (FileNotFoundException e) {
			System.out.println(e);
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			System.out.println(e);
			e.printStackTrace();
		} catch (SAXException e) {
			System.out.println(e);
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}