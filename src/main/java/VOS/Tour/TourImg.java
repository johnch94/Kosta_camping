package VOS.Tour;

public class TourImg {
	private String tourImg;
	public TourImg() {}
	public String getTourImg() {
		return tourImg;
	}
	public void setTourImg(String tourImg) {
		this.tourImg = tourImg;
	}
	public TourImg(String tourImg) {
		super();
		this.tourImg = tourImg;
	}
	@Override
	public String toString() {
		return "TourImg [tourImg=" + tourImg + "]";
	}
	

}
