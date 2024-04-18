package Handlers.Weather;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

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
import VOS.WeatherVO.CamWeather;

public class CamWeatherHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String key = "d8837c0fc8f973c07fdd90ac194e7d7a";
		String lat = request.getParameter("wlat");
		String lon = request.getParameter("wlon");
		String path = "https://api.openweathermap.org/data/2.5/forecast?lat=" + lat + "&lon=" + lon + "&mode=xml&appid="+ key;
		
		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();

			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(is);
			ArrayList<Handlers.vo.CamWeather> list = new ArrayList<>();
			Handlers.vo.CamWeather locN = new Handlers.vo.CamWeather();
 			Element root = doc.getDocumentElement();
 			String locaName="";
 			NodeList locations  = root.getElementsByTagName("location");
 			for(int i=0; i<locations.getLength(); i++) {
 				Element loc = (Element) locations.item(0);
 				locaName = loc.getElementsByTagName("name").item(0).getTextContent();
 				locN = new Handlers.vo.CamWeather(locaName);
 			} 
 			SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
 			SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd E", Locale.KOREAN);
			NodeList forecast = root.getElementsByTagName("time");
			for(int i=0; i<forecast.getLength(); i++) {
				 	Element forecastdata = (Element) forecast.item(i);
				 	String weaT = forecastdata.getAttribute("to");
					String weaTime = "null";
				 	String weaName = "";
				 	String rainPb = "";
				 	String rainType = "";
				 	String tmpValue = "";
				 	String tmpMin = "";
				 	String tmpMax = "";
				 	String humValue = "";
				 	String icon = "";
				 	if (weaT.contains("12:00") || weaT.contains("00:00:00")) {
				 		 Date date = inputFormat.parse(weaT);
				 		 System.out.println(date);
				 		 weaTime = outputFormat.format(date);
				 		 System.out.println(weaTime);
				 		 weaName = ((Element) forecastdata.getElementsByTagName("symbol").item(0)).getAttribute("name");
					        if(weaName.equals("온흐림")) {
					        	weaName = "흐림";
					        }
					        if(weaName.equals("실 비")) {
					        	weaName = "옅은 비";
					        }
					         icon = ((Element) forecastdata.getElementsByTagName("symbol").item(0)).getAttribute("var");
					        Float rainP = Float.parseFloat(((Element) forecastdata.getElementsByTagName("precipitation").item(0)).getAttribute("probability")) * 100;
					         rainPb = String.valueOf(Math.round(rainP * 10.0)/10.0) + "%";
					         rainType = ((Element) forecastdata.getElementsByTagName("precipitation").item(0)).getAttribute("type");
					        Double tmpVa = Double.parseDouble( ((Element) forecastdata.getElementsByTagName("temperature").item(0)).getAttribute("value")) - 273.15;
					         tmpValue = String.valueOf(Math.round(tmpVa * 10.0) / 10.0);
					        System.out.println(tmpValue);
					        Double tmpMi = Double.parseDouble(((Element) forecastdata.getElementsByTagName("temperature").item(0)).getAttribute("min")) - 273.15;
					         tmpMin = String.valueOf(Math.round(tmpMi * 10.0) / 10.0);
					        Double tmpMa = Double.parseDouble(((Element) forecastdata.getElementsByTagName("temperature").item(0)).getAttribute("max")) - 273.15;
					         tmpMax = String.valueOf(Math.round(tmpMa * 10.0) / 10.0);
					         humValue = ((Element) forecastdata.getElementsByTagName("humidity").item(0)).getAttribute("value") + "%";
				 	}
			        if(!weaTime.equals("null")) {
			        list.add(new Handlers.vo.CamWeather(weaTime, weaName, rainPb, rainType, tmpValue, tmpMin, tmpMax, humValue, icon));
			        }
			}
			request.setAttribute("list", list);
			request.setAttribute("locN", locN);
			
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
		}catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return "/js/weather.js";
	}

}
