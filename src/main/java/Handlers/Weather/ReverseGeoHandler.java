package Handlers.Weather;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VOS.WeatherVo.ReverseGeo;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import Handlers.Handler;

public class ReverseGeoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String lat = request.getParameter("weatherlat");
		String lon = request.getParameter("weatherlon");
		String path = "http://api.openweathermap.org/geo/1.0/reverse?lat=" + lat + "&lon=" + lon + "&limit=1"
				+ "&appid=d8837c0fc8f973c07fdd90ac194e7d7a";

		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			JSONParser parser = new JSONParser();
			JSONArray jsonarray = (JSONArray) parser.parse(new InputStreamReader(conn.getInputStream()));
			JSONArray geoList = new JSONArray();
			JSONObject geoDetail = new JSONObject();
			for (Object obj : jsonarray) {
				JSONObject jsonObj = (JSONObject) obj;
				String weatherlat = jsonObj.get("lat").toString();
				String weatherlon = jsonObj.get("lon").toString();
				JSONObject nameObj = (JSONObject) jsonObj.get("local_names");
				String name = (String) nameObj.get("ko");
				geoDetail.put("lat", weatherlat);
				geoDetail.put("lon", weatherlon);
				geoDetail.put("name", name);
				System.out.println(weatherlat);
				geoList.add(geoDetail);
			}
			response.getWriter().write(geoList.toJSONString());
			return null;
		} catch (ParseException e) {
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
