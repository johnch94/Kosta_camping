package VOS.WeatherVo;

public class ReverseGeo {
	
	private String weatherlat;
	private String weatherlon;
	private String name;
	
	public ReverseGeo() {}

	public ReverseGeo(String weatherlat, String weatherlon, String name) {
		super();
		this.weatherlat = weatherlat;
		this.weatherlon = weatherlon;
		this.name = name;
	}

	public String getWeatherlat() {
		return weatherlat;
	}

	public void setWeatherlat(String weatherlat) {
		this.weatherlat = weatherlat;
	}

	public String getWeatherlon() {
		return weatherlon;
	}

	public void setWeatherlon(String weatherlon) {
		this.weatherlon = weatherlon;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "ReverseGeo [weatherlat=" + weatherlat + ", weatherlon=" + weatherlon + ", name=" + name + "]";
	}

	
	
}
