package VOS.WeatherVo;

import java.util.ArrayList;

public class CamLocationList {
	private ArrayList<CamLocation> list;
	private String totalCount;
	public CamLocationList() {}
	public CamLocationList(ArrayList<CamLocation> list, String totalCount) {
		super();
		this.list = list;
		this.totalCount = totalCount;
	}
	public ArrayList<CamLocation> getList() {
		return list;
	}
	public void setList(ArrayList<CamLocation> list) {
		this.list = list;
	}
	public String getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(String totalCount) {
		this.totalCount = totalCount;
	}
	@Override
	public String toString() {
		return "CamLocationList [list=" + list + ", totalCount=" + totalCount + "]";
	}
	
	
}
