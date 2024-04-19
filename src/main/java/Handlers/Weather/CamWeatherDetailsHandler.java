package Handlers.Weather;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import Handlers.Handler;

public class CamWeatherDetailsHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String key = "d8837c0fc8f973c07fdd90ac194e7d7a";
		String lat = request.getParameter("wlat");
		String lon = request.getParameter("wlon");
		String path = "https://api.openweathermap.org/data/2.5/forecast?lat=" + lat + "&lon=" + lon + "&appid=" + key
				+ "&lang=kr";

		try {
			URL url = new URL(path);
			URLConnection conn = url.openConnection();
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(conn.getInputStream()));
			JSONArray list = (JSONArray) obj.get("list");
			JSONArray result = new JSONArray();

			for (Object item : list) {
				JSONObject weatherItem = (JSONObject) item;
				JSONObject weatherLists = new JSONObject();
				JSONArray weatherArray = (JSONArray) weatherItem.get("weather");
				JSONObject weather = (JSONObject) weatherArray.get(0);
				JSONObject main = (JSONObject) weatherItem.get("main");
				String dt_txt = (String) weatherItem.get("dt_txt");
				SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = dateForm.parse(dt_txt);
				SimpleDateFormat newDateForm = new SimpleDateFormat("M월d일 E HH시");
				String finalDateForm = newDateForm.format(date);
				String icon = (String) weather.get("icon");
				Number temp = (Number) main.get("temp");
				Number feels_like = (Number) main.get("feels_like");
				Number humidity = (Number) main.get("humidity");
				Number temp_min = (Number) main.get("temp_min");
				Number temp_max = (Number) main.get("temp_max");
				
				if (finalDateForm.endsWith("12시") || finalDateForm.endsWith("00시")) {
					weatherLists.put("dateTime", finalDateForm);
					weatherLists.put("icon", icon);
					weatherLists.put("temp", String.format("%.1f", temp.doubleValue() - 273.15));
					weatherLists.put("feels_like", String.format("%.1f", feels_like.doubleValue() - 273.15));
					weatherLists.put("humidity", String.format("%.1f", humidity.doubleValue()));
					weatherLists.put("minTemp", String.format("%.1f", temp_min.doubleValue() - 273.15));
					weatherLists.put("maxTemp", String.format("%.1f", temp_max.doubleValue() - 273.15));
					result.add(weatherLists);
				}
			}
			response.getWriter().write(result.toJSONString());
			return null;
			
		}catch (org.json.simple.parser.ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (java.text.ParseException e) {
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