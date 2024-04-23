package follow;

public class Follow {
    private int num;
    private String id;
    private int bnum;
    public Follow(int num, String id, int bnum) {
        this.num = num;
        this.id = id;
        this.bnum = bnum;
    }

    public Follow() {
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getMember_num() {
        return id;
    }

    public void setMember_num(String id) {
        this.id = id;
    }

    public int getBoard_num() {
        return bnum;
    }

    public void setBoard_num(int bnum) {
        this.bnum = bnum;
    }
}
