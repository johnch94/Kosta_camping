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

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import Handlers.Handler;
import vos.Img;

public class CamImgHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String path = "http://apis.data.go.kr/B551011/GoCamping/imageList?serviceKey=SZf%2BRflDYMf6sMf5DXZ17HAUiVff2aDe9Kp669N3GIMbikpuGzqOuduXjuKnmx93PkYHfg6xul3DHmB%2Fy6bCZg%3D%3D&MobileOS=ETC&MobileApp=AppTest&contentId=3429";
		try {
			URL url  = new URL(path);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(is);
			Element root = doc.getDocumentElement();
			NodeList nodes = root.getElementsByTagName("item");
			
			ArrayList<Img> list = new ArrayList<>();
			for (int i = 0; i < nodes.getLength(); i++) {
				Element img = (Element) nodes.item(i);
				
				//getTextContent(): 태그 텍스트값 반환
				String contentId = img.getElementsByTagName("contentId").item(0).getTextContent();
				String serialnum = img.getElementsByTagName("serialnum").item(0).getTextContent();
				String imageUrl = img.getElementsByTagName("imageUrl").item(0).getTextContent();
				list.add(new Img(contentId, serialnum, imageUrl, list));
			}
			
			request.setAttribute("list", list);
			
			
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
		
		return "/img/imglist.jsp";
		
		
		
	}

}
