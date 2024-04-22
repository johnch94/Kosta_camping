package VOS.Image;
public class Img {
	private String  contentId; //콘텐츠 ID
	private String serialnum; //이미지 일련번호
	private String imageUrl; //이미지 URL 
	
	public Img() {
		// TODO Auto-generated constructor stub
	}

	public Img(String contentId, String serialnum, String imageUrl) {
		super();
		this.contentId = contentId;
		this.serialnum = serialnum;
		this.imageUrl = imageUrl;
	}

	public String getContentId() {
		return contentId;
	}

	public void setContentId(String contentId) {
		this.contentId = contentId;
	}

	public String getSerialnum() {
		return serialnum;
	}

	public void setSerialnum(String serialnum) {
		this.serialnum = serialnum;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "Img [contentId=" + contentId + ", serialnum=" + serialnum + ", imageUrl=" + imageUrl + "]";
	}



	
		
	

	
	
	
}
