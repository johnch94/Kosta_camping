package VOS.Board;

public class CamMember {
  private int num;
  private String id;
  private String pw;
  private String name;
  private String tel;
  private String mail;

  public CamMember(){}

  public CamMember(int num, String id, String pw, String name, String tel, String mail) {
    this.num = num;
    this.id = id;
    this.pw = pw;
    this.name = name;
    this.tel = tel;
    this.mail = mail;
  }

  @Override
  public String toString() {
    return "CamMember{" +
        "num=" + num +
        ", id='" + id + '\'' +
        ", pw='" + pw + '\'' +
        ", name='" + name + '\'' +
        ", tel='" + tel + '\'' +
        ", mail='" + mail + '\'' +
        '}';
  }

  public int getNum() {
    return num;
  }

  public void setNum(int num) {
    this.num = num;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPw() {
    return pw;
  }

  public void setPw(String pw) {
    this.pw = pw;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getMail() {
    return mail;
  }

  public void setMail(String mail) {
    this.mail = mail;
  }
}
