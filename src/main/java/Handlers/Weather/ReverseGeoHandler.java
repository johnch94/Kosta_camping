package Handlers.Weather;

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

import Handlers.Handler;

public class ReverseGeoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String lat = request.getParameter("weatherlat");
		String lon = request.getParameter("weatherlon");
		String key = "d8837c0fc8f973c07fdd90ac194e7d7a";
		String path = "http://api.openweathermap.org/geo/1.0/reverse?lat=" + lat + "&lon=" + lon + "&limit=1"
				+ "&appid=" + key;

		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			JSONParser parser = new JSONParser();
			JSONArray jsonarray = (JSONArray) parser.parse(new InputStreamReader(conn.getInputStream()));
			ArrayList<ReverseGeo> list = new ArrayList<>();
			for (Object obj : jsonarray) {
				JSONObject jsonObj = (JSONObject) obj;
				String weatherlat = jsonObj.get("lat").toString();
				String weatherlon = jsonObj.get("lon").toString();
				JSONObject nameObj = (JSONObject) jsonObj.get("local_names");
				String name = (String) nameObj.get("ko");
				list.add(new ReverseGeo(weatherlat, weatherlon, name));
			}
			String wlat = list.get(0).getWeatherlat();
			String wlon = list.get(0).getWeatherlon();
			String wname = list.get(0).getName();
			request.setAttribute("wlat", wlat);
			request.setAttribute("wlon", wlon);
			request.setAttribute("wname", wname);
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

		return "/weather/listwea.do";
	}

}
