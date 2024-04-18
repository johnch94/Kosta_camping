package VOS.Board;

public class CamBoard {
  private int bnum;
  private int mnum;
  private String title;
  private String date;
  private String img;
  private String content;

  public CamBoard(){}

  public CamBoard(int bnum, int mnum, String title, String date, String img, String content) {
    this.bnum = bnum;
    this.mnum = mnum;
    this.title = title;
    this.date = date;
    this.img = img;
    this.content = content;
  }

  @Override
  public String toString() {
    return "CamBoard{" +
        "bnum=" + bnum +
        ", mnum=" + mnum +
        ", title='" + title + '\'' +
        ", date='" + date + '\'' +
        ", img='" + img + '\'' +
        ", content='" + content + '\'' +
        '}';
  }

  public int getBnum() {
    return bnum;
  }

  public void setBnum(int bnum) {
    this.bnum = bnum;
  }

  public int getMnum() {
    return mnum;
  }

  public void setMnum(int mnum) {
    this.mnum = mnum;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }

  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }
}
