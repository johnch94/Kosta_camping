package board;

import java.sql.Date;

public class Cam_Board {
	private int bnum;
	private String writer;
	private String area;
	private int price;
	private String title;
	private Date wdate;
	private String content;
	private String img1;
	private int fnt;
	private String img2;
	private String img3;
	
	public Cam_Board() {
		
	}

	public Cam_Board(int bnum, String writer, String area, int price, String title, Date wdate, String content,
			String img1, int fnt, String img2, String img3) {
		super();
		this.bnum = bnum;
		this.writer = writer;
		this.area = area;
		this.price = price;
		this.title = title;
		this.wdate = wdate;
		this.content = content;
		this.img1 = img1;
		this.fnt = fnt;
		this.img2 = img2;
		this.img3 = img3;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public int getFnt() {
		return fnt;
	}

	public void setFnt(int fnt) {
		this.fnt = fnt;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	@Override
	public String toString() {
		return "Cam_Board [bnum=" + bnum + ", writer=" + writer + ", area=" + area + ", price=" + price + ", title="
				+ title + ", wdate=" + wdate + ", content=" + content + ", img1=" + img1 + ", fnt=" + fnt + ", img2="
				+ img2 + ", img3=" + img3 + "]";
	}

}
