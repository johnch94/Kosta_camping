package VOS.Cam_Board;

import java.sql.Date;

public class Cam_Comment {
	private int cnum;
	private String body;
	private int bnum;
	private String writer;
	private Date wdate;
	
	public Cam_Comment() {
		
	}

	public Cam_Comment(int cnum, String body, int bnum, String writer, Date wdate) {
		super();
		this.cnum = cnum;
		this.body = body;
		this.bnum = bnum;
		this.writer = writer;
		this.wdate = wdate;
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
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

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	@Override
	public String toString() {
		return "Cam_Comment [cnum=" + cnum + ", body=" + body + ", bnum=" + bnum + ", writer=" + writer + ", wdate="
				+ wdate + "]";
	}
	
}
