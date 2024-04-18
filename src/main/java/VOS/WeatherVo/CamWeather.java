package VOS.WeatherVo;

public class CamWeather {
	private String locaName;
	private String sunRise;
	private String sunSet;
	private String weaTime;
	private String weaName;
	private String rainPb;
	private String rainType;
	private String tmpValue;
	private String tmpMin;
	private String tmpMax;
	private String humValue;
	private String icon;
	
	public CamWeather() {}
	
	public CamWeather(String locaName) {
		this.locaName = locaName;
	}

	public CamWeather(String weaTime, String weaName, String rainPb,
			String rainType, String tmpValue, String tmpMin, String tmpMax, String humValue, String icon) {
		super();
		this.weaTime = weaTime;
		this.weaName = weaName;
		this.rainPb = rainPb;
		this.rainType = rainType;
		this.tmpValue = tmpValue;
		this.tmpMin = tmpMin;
		this.tmpMax = tmpMax;
		this.humValue = humValue;
		this.icon = icon;
	}

	public String getLocaName() {
		return locaName;
	}

	public void setLocaName(String locaName) {
		this.locaName = locaName;
	}

	public String getSunRise() {
		return sunRise;
	}

	public void setSunRise(String sunRise) {
		this.sunRise = sunRise;
	}

	public String getSunSet() {
		return sunSet;
	}

	public void setSunSet(String sunSet) {
		this.sunSet = sunSet;
	}

	public String getWeaTime() {
		return weaTime;
	}

	public void setWeaTime(String weaTime) {
		this.weaTime = weaTime;
	}

	public String getWeaName() {
		return weaName;
	}

	public void setWeaName(String weaName) {
		this.weaName = weaName;
	}

	public String getRainPb() {
		return rainPb;
	}

	public void setRainPb(String rainPb) {
		this.rainPb = rainPb;
	}

	public String getRainType() {
		return rainType;
	}

	public void setRainType(String rainType) {
		this.rainType = rainType;
	}

	public String getTmpValue() {
		return tmpValue;
	}

	public void setTmpValue(String tmpValue) {
		this.tmpValue = tmpValue;
	}

	public String getTmpMin() {
		return tmpMin;
	}

	public void setTmpMin(String tmpMin) {
		this.tmpMin = tmpMin;
	}

	public String getTmpMax() {
		return tmpMax;
	}

	public void setTmpMax(String tmpMax) {
		this.tmpMax = tmpMax;
	}

	public String getHumValue() {
		return humValue;
	}

	public void setHumValue(String humValue) {
		this.humValue = humValue;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	@Override
	public String toString() {
		return "CamWeather [locaName=" + locaName + ", sunRise=" + sunRise + ", sunSet=" + sunSet + ", weaTime="
				+ weaTime + ", weaName=" + weaName + ", rainPb=" + rainPb + ", rainType=" + rainType + ", tmpValue="
				+ tmpValue + ", tmpMin=" + tmpMin + ", tmpMax=" + tmpMax + ", humValue=" + humValue + ", icon=" + icon
				+ "]";
	}

	

	
	
	
	
	
}
