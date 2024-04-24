package VOS.Board;

public class CamComment {

//  Cnum number primary key ,
//  body varchar2(100) ,
//  BNum number references Cam_Board(bnum) on delete cascade,
//  Mnum number references Cam_Member(num) on delete cascade,
//  wdate DATE,
//  cgroup number not null,
//  depth number not null,
//  sorts number
  private int cnum;
  private String body;
  private int bnum;
  private int mnum;
  private String wdate;
  private int cgroup;
  private int depth;
  private int sorts;

  public CamComment(int cnum, String body, int bnum, int mnum, String wdate, int cgroup, int depth, int sorts) {
    this.cnum = cnum;
    this.body = body;
    this.bnum = bnum;
    this.mnum = mnum;
    this.wdate = wdate;
    this.cgroup = cgroup;
    this.depth = depth;
    this.sorts = sorts;
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

  public int getMnum() {
    return mnum;
  }

  public void setMnum(int mnum) {
    this.mnum = mnum;
  }

  public String getWdate() {
    return wdate;
  }

  public void setWdate(String wdate) {
    this.wdate = wdate;
  }

  public int getCgroup() {
    return cgroup;
  }

  public void setCgroup(int cgroup) {
    this.cgroup = cgroup;
  }

  public int getDepth() {
    return depth;
  }

  public void setDepth(int depth) {
    this.depth = depth;
  }

  public int getSorts() {
    return sorts;
  }

  public void setSorts(int sorts) {
    this.sorts = sorts;
  }

}
